using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace Floor.Models
{
    public class ProFurnished
    {
        public int Id { get; set; }
        [Display(Name = "Furnished Status")]
        [Required]
        public string Name { get; set; }
    }
}
