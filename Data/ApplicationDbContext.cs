using Floor.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
            
        }
        public DbSet<ProCategory> ProCategory { get; set; }
        public DbSet<ProAvailability> ProAvailability { get; set; }
        public DbSet<ProParking> ProParking { get; set; }
        public DbSet<ProRentalWO> ProRentalWO { get; set; }
        public DbSet<ProFurnished> ProFurnished { get; set; }

        public DbSet<RentalPro> RentalPro { get; set; }
        public DbSet<ApplicationUser> ApplicationUser { get; set; }

        public DbSet<Booking> Booking { get; set; }
    }
}
