using BusinessLibrary.Models;

namespace BusinessLibrary.Interfaces
{
    public interface IDishData
    {
        Task AddNewDish(DishModel dish);
        Task<List<DishModel>> GetAllDishes();
        Task<List<DishModel>> GetDishByEventId(int dishId);
    }
}