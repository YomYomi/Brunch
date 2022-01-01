using BusinessLibrary.Models;

namespace BusinessLibrary.Interfaces
{
    public interface IEventData
    {
        Task AddNewEvent(EventModel even);
        Task<List<EventModel>> GetAllEvents();
        Task<EventModel> GetEventById(int eventId);
    }
}