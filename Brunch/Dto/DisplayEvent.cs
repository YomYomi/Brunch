using System.ComponentModel.DataAnnotations;

namespace Brunch.Dto
{
    public class DisplayEvent
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "שדה שם האירוע הוא חובה")]
        [StringLength(50, ErrorMessage = " שדה שם האירוע ארוך מידי")]
        [MinLength(2, ErrorMessage = "שדה שם האירוע קצר מידי")]
        public string? EventTitle { get; set; }


        [Required(ErrorMessage = "שדה תיאור האירוע הוא חובה")]
        [StringLength(500, ErrorMessage = " שדה תיאור האירוע ארוך מידי")]
        [MinLength(2, ErrorMessage = "שדה תיאור האירוע קצר מידי")]
        public string? EventDescription { get; set; }

        [Required(ErrorMessage = "שדות תאריך ושעת האירוע הם חובה")]
        public DateTime EventDateTime { get; set; } = DateTime.UtcNow;
        public bool IsActive { get; set; }

    }
}
