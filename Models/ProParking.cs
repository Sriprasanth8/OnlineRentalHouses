using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace Floor.Models
{
    public class ProParking
    {
        public int Id { get; set; }
        [Display(Name = "Parking Availability")]
        [Required]
        public string Name { get; set; }
    }
}
