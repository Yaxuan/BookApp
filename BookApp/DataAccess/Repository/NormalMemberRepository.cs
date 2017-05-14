using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class NormalMemberRepository : Repository<NormalMember>, INormalMemberRepository
    {
        private readonly DataContext _context;

        public NormalMemberRepository(DataContext context) : base(context)
        {
            _context = context;
        }

        public Task<NormalMember> GetNormalMemberByUserIdAsync(int userId)
        {
            return Task.Run(() =>
            {
                return _context.NormalMembers.FirstOrDefault(m => m.User_id == userId);
            });
        }
    }
}