using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Models
{
    public class ProCategory
    {
        public int Id { get; set; }
        [Display(Name ="Property Type")]
        [Required]
        public string Name { get; set; }
    }
}
