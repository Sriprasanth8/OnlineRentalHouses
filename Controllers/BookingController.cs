using Floor.Data;
using Floor.Models;
using Floor.Models.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;

namespace Floor.Controllers
{
    public class BookingController : Controller
    {
        public readonly ApplicationDbContext _db;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public BookingController(ApplicationDbContext db, IWebHostEnvironment webHostEnvironmwnt)
        {
            _db = db;
            _webHostEnvironment = webHostEnvironmwnt;
        }

        [Authorize]
        public IActionResult Index(int id)
        {
            var Identity = (ClaimsIdentity)User.Identity;
            var user = Identity.Name;
            RentalPro pro = new RentalPro();
            pro = _db.RentalPro.Find(id);
            if(pro == null)
            {
                TempData[WC.Error] = "Error : id not found";
                return NotFound();
            }
            else if (user == pro.PropertyHolderName.ToString())
            {
                TempData[WC.Error] = "you did not send request to your post";
                return RedirectToAction("Details", "RentalPro", new { id = id });
            }
            else
            {
                Booking booking = new Booking()
                {
                    PropertyId = id,
                    ProOwnerName = pro.PropertyHolderName.ToString(),
                    IntrestedPersonName = user,
                    Status = "Pending",
                };
                _db.Booking.Add(booking);
                _db.SaveChanges();
                TempData[WC.Success] = "Request seccessfully send";
                return RedirectToAction("Details", "RentalPro", new { id = id });
            }
        }

        [Authorize]
        public IActionResult Bookings()
        {
            IEnumerable<Booking> book= _db.Booking.Where(u => u.IntrestedPersonName == User.Identity.Name);
            return View(book);
        }

        public IActionResult Delete(int? id)
        {

            var obj = _db.Booking.Find(id);
            _db.Booking.Remove(obj);
            _db.SaveChanges();
            TempData[WC.Success] = "Boooking canclled";
            return RedirectToAction("Bookings");
        }

        [HttpPost]
        public IActionResult Accept(int id)
        {
            Booking book = _db.Booking.Find(id);
            if (book == null)
            {
                return NotFound();
            }
            book.Status = "Accept";
            _db.Booking.Update(book);
            _db.SaveChanges();
            return RedirectToAction("Index", "YourPost");
        }
        [HttpPost]
        public IActionResult Reject(int id)
        {
            Booking book = _db.Booking.Find(id);
            if (book == null)
            {
                return NotFound();
            }
            book.Status = "Rejected";
            _db.Booking.Update(book);
            _db.SaveChanges();
            return RedirectToAction("Index", "YourPost");
        }
    }
 }

