using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Floor.Models
{
    public class RentalPro
    {
        public int Id { get; set; }

        [Required]
        public string PropertyHolderName { get; set; }

        [Display(Name = "Property Type")]
        [Required]
        public int ProCategoryId { get; set; }
        [ForeignKey("ProCategoryId")]
        public virtual ProCategory ProCategory { get; set; }

        [Required]
        [Range(1, int.MaxValue, ErrorMessage = "Must be greater than 0")]
        public int SquareFt { get; set; }
        [Required]
        [Range(1, int.MaxValue, ErrorMessage = "Must be greater than 0")]
        public int BedRoom { get; set; }

        [Display(Name = "Furnished Type")]
        [Required]
        public int ProFurnishedId { get; set; }
        [ForeignKey("ProFurnishedId")]
        public virtual ProFurnished ProFurnished { get; set; }

        [Display(Name = "Parking Type")]
        [Required]
        public int ProParkingId { get; set; }
        [ForeignKey("ProParkingId")]
        public virtual ProParking ProParking { get; set; }

        [Display(Name = "ProAvailability Type")]
        [Required]
        public int ProAvailabilityId { get; set; }
        [ForeignKey("ProAvailabilityId")]
        public virtual ProAvailability ProAvailability { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "Must be greater than 0")]
        public int HouseAmenities { get; set; }
        public int SocietyAmenities { get; set; }
        [Required]
        public string Image { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        [Range(1, int.MaxValue, ErrorMessage = "Must be greater than 0")]
        public int Rent { get; set; }
        [Required]
        [Range(1, int.MaxValue, ErrorMessage = "Must be greater than 0")]
        public int SecurityDeposit { get; set; }
        [Display(Name = "Rental with out")]
        [Required]
        public int ProRentalWOId { get; set; }
        [ForeignKey("ProRentalWOId")]
        public virtual ProRentalWO ProRentalWO { get; set; }

        [Required]
        public string Address { get; set; }
        [Required]
        public string City { get; set; }
        [Required]
        public string State { get; set; }
        [Required]
        [DataType(DataType.Time)]
        public DateTime CreateDt { get; set; }
        [Required]
        [DataType(DataType.Time)]
        public DateTime UpdateDt { get; set; }
    }
}
