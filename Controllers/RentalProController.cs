using Floor;
using Floor.Data;
using Floor.Models;
using Floor.Models.ViewModels;
using Floor.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace DemoDemo.Controllers
{
    public class RentalProController : Controller
    {

        public readonly ApplicationDbContext _db;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public RentalProController(ApplicationDbContext db, IWebHostEnvironment webHostEnvironmwnt)
        {
            _db = db;
            _webHostEnvironment = webHostEnvironmwnt;
        }
        public IActionResult Index2()
        {
            IEnumerable<RentalPro> objList = _db.RentalPro.Include(u => u.ProCategory).Include(u => u.ProFurnished).Include(u => u.ProParking).Include(u => u.ProAvailability).Include(u => u.ProRentalWO);

            //foreach (var obj in objList)
            //{
            //    obj.Category = _db.Category.FirstOrDefault(u => u.Id == obj.CategoryId);
            //    obj.ApplicationType = _db.ApplicationType.FirstOrDefault(u => u.Id == obj.ApplicationTypeId);

            //}

            return View(objList);
        }
        public IActionResult Index()
        {
            HomeVM homeVM = new HomeVM()
            {
                RentalPros = _db.RentalPro.Include(u => u.ProCategory).Include(u => u.ProFurnished).Include(u => u.ProParking).Include(u => u.ProAvailability).Include(u => u.ProRentalWO),
                ProCategories = _db.ProCategory,
                ProAvailabilitys=_db.ProAvailability,
                ProFurnisheds = _db.ProFurnished,
                ProParkings = _db.ProParking,
            };
            return View(homeVM);
        }

        [HttpPost, ActionName("Index")]
        public IActionResult IndexPost(string location)
        {
            HomeVM homeVM = new HomeVM()
            {
                RentalPros = _db.RentalPro.Include(u => u.ProCategory).Include(u => u.ProFurnished).Include(u => u.ProParking).Include(u => u.ProAvailability).Include(u => u.ProRentalWO).Where(u => u.City.ToLower() == location.ToLower()),
                ProCategories = _db.ProCategory,
                ProAvailabilitys = _db.ProAvailability,
                ProFurnisheds = _db.ProFurnished,
                ProParkings = _db.ProParking,
            };
            return View(homeVM);
        }

        public IActionResult Details(int? id)
        {
            List<RentalProSave> sessionSaveList = new List<RentalProSave>();
            if (HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave) != null
                && HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave).Count() > 0)
            {
                sessionSaveList = HttpContext.Session.Get<List<RentalProSave>>(WC.SessionSave);
            }
            DetailsVM detailsVM = new DetailsVM()
            {
                RentalPro = _db.RentalPro.Include(u => u.ProCategory).Include(u => u.ProFurnished).Include(u => u.ProParking).Include(u => u.ProAvailability).Include(u => u.ProRentalWO)
                .Where(u => u.Id == id).FirstOrDefault(),
                Booking =_db.Booking.Where(u=>u.PropertyId == id && u.IntrestedPersonName == User.Identity.Name).FirstOrDefault(),
                ExistsInSave = false
            };

            foreach (var item in sessionSaveList)
            {
                if (item.RentalProId == id)
                {
                    detailsVM.ExistsInSave = true;
                }
            }
            return View(detailsVM);
        }

        [HttpPost, ActionName("Details")]
        public IActionResult DetailsPost(int id)
        {
            List<RentalProSave> sessionSaveList = new List<RentalProSave>();
            if (HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave) != null
                && HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave).Count() > 0)
            {
                sessionSaveList = HttpContext.Session.Get<List<RentalProSave>>(WC.SessionSave);
            }
            sessionSaveList.Add(new RentalProSave { RentalProId = id });
            HttpContext.Session.Set(WC.SessionSave, sessionSaveList);
            TempData[WC.Success] = "Saved successfully";
            return RedirectToAction("Details");
        }

        public IActionResult RemoveFromSave(int id)
        {
            List<RentalProSave> SaveList = new List<RentalProSave>();
            if (HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave) != null
                && HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave).Count() > 0)
            {
                SaveList = HttpContext.Session.Get<List<RentalProSave>>(WC.SessionSave);
            }

            var itemToRemove = SaveList.SingleOrDefault(r => r.RentalProId == id);
            if (itemToRemove != null)
            {
                SaveList.Remove(itemToRemove);
            }

            HttpContext.Session.Set(WC.SessionSave, SaveList);
            TempData[WC.Success] = "Removed successfully";
            return RedirectToAction("Details", new { id = id });
        }

        [Authorize]
        [HttpGet]
        public IActionResult Upsert(int? id)
        {
            RentalProVM rentalProVM = new RentalProVM()
            {
                RentalPro = new RentalPro(),
                ProCategorySelectList = _db.ProCategory.Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                }),
                ProFurnishedSelectList = _db.ProFurnished.Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                }),
                ProParkingSelectList = _db.ProParking.Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                }),
                ProAvailabilitySelectList = _db.ProAvailability.Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                }),
                ProRentalWOSelectList = _db.ProRentalWO.Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                })
            };
            if (id == null)
            {
                return View(rentalProVM);
            }
            else
            {
                rentalProVM.RentalPro = _db.RentalPro.Find(id);
                if (rentalProVM.RentalPro == null)
                {
                    return NotFound();
                }
                return View(rentalProVM);
            }
        }

        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Upsert(RentalProVM rentalProVM)
        {
                var cDateTime = DateTime.Now;       
                var files = HttpContext.Request.Form.Files;
                string webRootPath = _webHostEnvironment.WebRootPath;

                if (rentalProVM.RentalPro.Id == 0)
                {
                    //creating
                    rentalProVM.RentalPro.PropertyHolderName = HttpContext.User.Identity.Name;
                    rentalProVM.RentalPro.CreateDt = cDateTime;
                    rentalProVM.RentalPro.UpdateDt = cDateTime;
                    string upload = webRootPath + WC.ImagePath;
                    string fileName = Guid.NewGuid().ToString();
                    string extension = Path.GetExtension(files[0].FileName);
                    using (var fileStream = new FileStream(Path.Combine(upload, fileName + extension), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    rentalProVM.RentalPro.Image = fileName + extension;
                    _db.RentalPro.Add(rentalProVM.RentalPro);
                }

                else
                {
                //updating
                //rentalProVM.RentalPro.UpdateDt = cDateTime;
                rentalProVM.RentalPro.PropertyHolderName = HttpContext.User.Identity.Name;

                var objFromDB = _db.RentalPro.AsNoTracking().FirstOrDefault(u => u.Id == rentalProVM.RentalPro.Id);

                    if (files.Count > 0)
                    {
                        string upload = webRootPath + WC.ImagePath;
                        string fileName = Guid.NewGuid().ToString();
                        string extension = Path.GetExtension(files[0].FileName);

                        var oldFile = Path.Combine(upload, objFromDB.Image);
                        if (System.IO.File.Exists(oldFile))
                        {
                            System.IO.File.Delete(oldFile);
                        }
                        using (var fileStream = new FileStream(Path.Combine(upload, fileName + extension), FileMode.Create))
                        {
                            files[0].CopyTo(fileStream);
                        }
                        rentalProVM.RentalPro.Image = fileName + extension;
                    }
                    else
                    {
                        rentalProVM.RentalPro.Image = objFromDB.Image;
                    }
                    _db.RentalPro.Update(rentalProVM.RentalPro);
                }
                _db.SaveChanges();
                TempData[WC.Success] = "post created successfully";
                return RedirectToAction("Index","YourPost");
           
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(int? id)
        {
            var obj = _db.RentalPro.Find(id);
            if (obj == null)
            {
                TempData[WC.Error] = "Id not found";
                return NotFound();
            }

            string upload = _webHostEnvironment.WebRootPath + WC.ImagePath;
            var oldFile = Path.Combine(upload, obj.Image);

            if (System.IO.File.Exists(oldFile))
            {
                System.IO.File.Delete(oldFile);
            }


            _db.RentalPro.Remove(obj);
            _db.SaveChanges();
            TempData[WC.Success] = "post deleted successfully";
            return RedirectToAction("Index","YourPost");
        }

    }
}