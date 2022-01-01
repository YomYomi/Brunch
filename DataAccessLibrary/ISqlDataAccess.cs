
namespace DataAccessLibrary
{
    public interface ISqlDataAccess
    {
        string ConnectionStringName { get; set; }

        Task<List<T>> LoadList<T, U>(string sql, U parameters);

        Task<T> LoadSingle<T, U>(string sql, U parameters);
        Task SaveData<T>(string sql, T parameters);
    }
}