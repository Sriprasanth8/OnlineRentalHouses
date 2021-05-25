using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace Floor.Models
{
    public class ProRentalWO
    {
        public int Id { get; set; }
        [Display(Name = "Rental without")]
        [Required]
        public string Name { get; set; }
    }
}
