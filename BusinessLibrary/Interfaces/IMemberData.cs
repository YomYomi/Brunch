using BusinessLibrary.Models;

namespace BusinessLibrary.Interfaces
{
    public interface IMemberData
    {
        Task AddNewMember(MemberModel member);
        Task<List<MemberModel>> GetAllMembers();
        Task<List<MemberModel>> GetMembersByEventId(int eventId);

        Task SaveDishToMember(int memberId, int dishID, int eventID);
        
    }
}