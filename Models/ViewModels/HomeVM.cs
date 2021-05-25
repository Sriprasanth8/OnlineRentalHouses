using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Models.ViewModels
{
    public class HomeVM
    {
        public IEnumerable<RentalPro> RentalPros { get; set; }
        public IEnumerable<ProCategory> ProCategories { get; set; }
        public IEnumerable<ProAvailability> ProAvailabilitys { get; set; }
        public IEnumerable<ProFurnished> ProFurnisheds { get; set; }
        public IEnumerable<ProParking> ProParkings { get; set; }

    }
}
