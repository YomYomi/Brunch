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
    public class EventData : IEventData
    {
        private readonly ISqlDataAccess _db;

        public EventData(ISqlDataAccess db)
        {
            this._db = db;
        }

        public Task<List<EventModel>> GetAllEvents()
        {
            string sql = "select ID, EventTitle,EventDescription,EventDateTime ,CreateDate,UpdateDate, IsActive from dbo.Events where IsActive = 1";
            return _db.LoadList<EventModel, dynamic>(sql, new { });
        }

        public Task AddNewEvent(EventModel even)
        {

            string sql = @"insert into dbo.Events(EventTitle,EventDescription, EventDateTime, CreateDate,UpdateDate)
                           Values(@EventTitle,@EventDescription, @EventDateTime, @CreateDate, @UpdateDate )";

            return _db.SaveData(sql, even);
        }

        public Task<EventModel> GetEventById(int EventId)
        {
            string sql = $"select ID, EventTitle,EventDescription,EventDateTime ,CreateDate,UpdateDate, IsActive from dbo.Events where IsActive = 1 AND Id={EventId}";
            return _db.LoadSingle<EventModel, dynamic>(sql, new { });
        }
    }
}
