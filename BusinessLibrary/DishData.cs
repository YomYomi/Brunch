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
    public class DishData : IDishData
    {
        private readonly ISqlDataAccess _db;

        public DishData(ISqlDataAccess db)
        {
            this._db = db;
        }

        public Task<List<DishModel>> GetAllDishes()
        {
            string sql = @"select Id, DishName, DishDescription, MenuID
                           from dbo.Dishes where IsActive = 1";
            return _db.LoadList<DishModel, dynamic>(sql, new { });
        }

        public Task AddNewDish(DishModel even)
        {

            string sql = @"insert into dbo.Dishes(DishName,DishDescription, MenuID )
                           Values(@DishName,@DishDescription, @MenuID)";

            return _db.SaveData(sql, even);
        }

        public Task<List<DishModel>> GetDishByEventId(int eventId)
        {
            string sql = @$"select d.Id,d.DishName, d.DishDescription
                            from MenuEvent me
                            inner join Dishes d on d.MenuId = me.MenuId
                            where me.EventId = {eventId} and d.IsActive = 1 ";
            return _db.LoadList<DishModel, dynamic>(sql, new { });
        }
    }
}
