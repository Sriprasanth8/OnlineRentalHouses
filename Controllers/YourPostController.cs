using Floor.Data;
using Floor.Models;
using Floor.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Controllers
{
    public class YourPostController : Controller
    {
        private readonly ApplicationDbContext _db;

        public YourPostController(ApplicationDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            InterestedVM interstedVM = new InterestedVM()
            {
                RentalPros = _db.RentalPro.Include(u => u.ProCategory).Include(u => u.ProFurnished).Include(u => u.ProParking).Include(u => u.ProAvailability).Include(u => u.ProRentalWO).Where(u => u.PropertyHolderName == User.Identity.Name),
                Bookings = _db.Booking.Where(u => u.ProOwnerName == User.Identity.Name)
            };
            return View(interstedVM);
        }
    }
}

