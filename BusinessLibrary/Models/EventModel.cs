using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLibrary.Models
{
    public class EventModel: IAuditEntity
    {
        public int Id { get; set; }
        public string? EventTitle { get; set; }
        public string? EventDescription { get; set; }
        public DateTime EventDateTime { get; set; }        

        public bool? IsActive { get; set; }
        public DateTime CreateDate { get; set; } = DateTime.UtcNow;
        public DateTime UpdateDate { get; set; } = DateTime.UtcNow;
    }
}

