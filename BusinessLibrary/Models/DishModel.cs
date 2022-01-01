using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLibrary.Models
{
    public class DishModel: IAuditEntity
    {
        public int ID { get; set; } 
        public string DishName { get; set; }
        public string DishDescription { get; set; }
        public bool IsActive { get; set; }
        public DateTime CreateDate { get; set; } = DateTime.UtcNow;
        public DateTime UpdateDate { get; set; } = DateTime.UtcNow;
        public int? MenuID { get; set; }
    }
}
