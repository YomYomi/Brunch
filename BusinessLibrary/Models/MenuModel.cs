using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLibrary.Models
{
    public class MenuModel:IAuditEntity
    {
        public int Id { get; set; } 
        public string? Name { get; set; }
        public List<DishModel>? Dishes{ get; set; }
        public int EventId { get; set; }
        public DateTime CreateDate { get; set; } = DateTime.UtcNow;
        public DateTime UpdateDate { get; set; } = DateTime.UtcNow;
        
    }
}
