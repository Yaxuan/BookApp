using System.Threading.Tasks;
using BookApp.Models;

namespace BookApp.DataAccess.Interface
{
    public interface INormalMemberRepository : IRepository<NormalMember>
    {
        Task<NormalMember> GetNormalMemberByUserIdAsync(int userId);
    }
}