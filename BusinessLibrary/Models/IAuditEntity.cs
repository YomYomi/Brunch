using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLibrary.Models
{
    internal interface IAuditEntity
    {
        public DateTime CreateDate { get; set; }
        public DateTime UpdateDate { get; set; }

    }
}
