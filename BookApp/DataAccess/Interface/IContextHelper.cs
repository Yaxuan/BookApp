using System.Data.Entity;
using System.Threading.Tasks;

namespace BookApp.DataAccess.Interface
{
    public interface IContextHelper
    {
        DbContextTransaction BeginTransaction();

        Task<long> GetSequenceNoAsync(string sequenceName);
    }
}