namespace BusinessLibrary.Models
{
    public class MemberModel : IAuditEntity
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }

        public int ID { get; set; }
        public string CellularPref { get; set; }
        public string CellularNo { get; set; }
        public DateTime CreateDate { get; set; } = DateTime.UtcNow.Date;

        public DateTime UpdateDate { get; set; } = DateTime.UtcNow.Date;
        public bool IsActive { get; set; }
    }
}