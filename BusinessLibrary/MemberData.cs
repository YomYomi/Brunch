using BusinessLibrary.Interfaces;
using BusinessLibrary.Models;
using DataAccessLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLibrary
{
    public class MemberData : IMemberData
    {
        private readonly ISqlDataAccess _db;

        public MemberData(ISqlDataAccess db)
        {
            this._db = db;
        }

        public Task<List<MemberModel>> GetAllMembers()
        {
            string sql = "select FirstName,LastName,EmailAddress,ID,CellularPref,CellularNo, IsActive from dbo.Members where IsActive = 1";
            return _db.LoadList<MemberModel, dynamic>(sql, new { });
        }

        public Task AddNewMember(MemberModel member)
        {
            member.CreateDate = DateTime.UtcNow;
            string sql = @"insert into dbo.Members(FirstName,LastName,EmailAddress,CellularPref,CellularNo, CreateDate, UpdateDate)
                           Values(@FirstName,@LastName,@EmailAddress,@CellularPref,@CellularNo, @CreateDate, @UpdateDate)";

            return _db.SaveData(sql, member);
        }

        public Task<List<MemberModel>> GetMembersByEventId(int eventId)
        {
            string sql = @$"SELECT m.FirstName, m.LastName, m.EmailAddress,m.ID , m.CellularPref, m.CellularNo 
                            FROM dbo.EventMemberAttendance att
                            INNER JOIN Members m on m.Id = att.MemberId
                            WHERE m.IsActive = 1 and att.EventId={eventId}";
            return _db.LoadList<MemberModel, dynamic>(sql, new { });
        }

        public Task SaveDishToMember(int memberId, int dishID, int eventID)
        {
       
            string sql = @"insert into dbo.MemberDishEvent(MemberId,DishId,EventId)
                           Values(@MemberId,@DishId,@EventId)";

            return _db.SaveData(sql, new { memberId, dishID, eventID });
        }
    }
}
