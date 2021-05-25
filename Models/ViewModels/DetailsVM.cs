using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Models.ViewModels
{
    public class DetailsVM
    {
        public DetailsVM()
        {
            RentalPro = new RentalPro();
            Booking = new Booking();
        }
        public RentalPro RentalPro { get; set; }
        public Booking Booking { get; set; }
        public bool ExistsInSave { get; set; }
    }
}
