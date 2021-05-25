using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Models.ViewModels
{
    public class RentalProVM
    {
        public RentalPro RentalPro { get; set; }
        public IEnumerable<SelectListItem> ProCategorySelectList { get; set; }
        public IEnumerable<SelectListItem> ProFurnishedSelectList { get; set; }
        public IEnumerable<SelectListItem> ProParkingSelectList { get; set; }
        public IEnumerable<SelectListItem> ProAvailabilitySelectList { get; set; }
        public IEnumerable<SelectListItem> ProRentalWOSelectList { get; set; }

    }
}
