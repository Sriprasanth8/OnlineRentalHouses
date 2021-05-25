using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Models.ViewModels
{
    public class InterestedVM
    {
        public IEnumerable<RentalPro> RentalPros { get; set; }
        public IEnumerable<Booking> Bookings { get; set; }

    }
}
