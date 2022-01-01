using System.ComponentModel.DataAnnotations;

namespace Brunch.Dto
{
    public class DisplayMemberModel
    {

        [Required (ErrorMessage ="שדה שם פרטי הוא חובה")]
        [StringLength(30, ErrorMessage = "שם פרטי ארוך מידי")]
        [MinLength(2, ErrorMessage = "שם פרטי קצר מידי")]
        public string FirstName { get; set; } = "";

        [Required(ErrorMessage = "שדה שם משפחה הוא חובה")]
        [StringLength(30, ErrorMessage = "שם משפחה ארוך מידי")]
        [MinLength(2, ErrorMessage = "שם משפחה קצר מידי")]
        public string LastName { get; set; } = "";


        [Required(ErrorMessage = "שדה דוא\"ל הוא חובה")]
        [EmailAddress]
        public string EmailAddress { get; set; } = "";

        public string CellularPref { get; set; } = "";

        public string CellularNo { get; set; } = "";

        public bool IsActive { get; set; } = true;

        
    }
}
