using Floor.Data;
using Floor.Models;
using Floor.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Controllers
{
    //[Authorize]
    public class SaveController : Controller
    {
        private readonly ApplicationDbContext _db;

        public SaveController(ApplicationDbContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
            List<RentalProSave> housesSaveList = new List<RentalProSave>();
            if (HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave) != null
                && HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave).Count() > 0)
            {
                //session exists
                housesSaveList = HttpContext.Session.Get<List<RentalProSave>>(WC.SessionSave);
            }
            List<int> housesInSave = housesSaveList.Select(i => i.RentalProId).ToList();
            IEnumerable<RentalPro> saveList = _db.RentalPro.Where(u => housesInSave.Contains(u.Id));
            return View(saveList);
        }
        public IActionResult Remove(int id)
        {

            List<RentalProSave> housesSaveList = new List<RentalProSave>();
            if (HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave) != null
                && HttpContext.Session.Get<IEnumerable<RentalProSave>>(WC.SessionSave).Count() > 0)
            {
                //session exsits
                housesSaveList = HttpContext.Session.Get<List<RentalProSave>>(WC.SessionSave);
            }

            housesSaveList.Remove(housesSaveList.FirstOrDefault(u => u.RentalProId == id));
            HttpContext.Session.Set(WC.SessionSave, housesSaveList);
            TempData[WC.Success] = "Removed successfully";
            return RedirectToAction(nameof(Index));
        }
    }
}
