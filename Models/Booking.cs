using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Models
{
    public class Booking
    {
        public int Id { get; set; }
        public int PropertyId { get; set; }
        public string ProOwnerName { get; set; }
        public string IntrestedPersonName { get; set; }
        public string Status { get; set; }
    }
}
