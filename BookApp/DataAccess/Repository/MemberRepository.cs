using System;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using System.Web.Http;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class MemberRepository : Repository<Member>, IMemberRepository
    {
        private readonly DataContext _context;

        public MemberRepository(DataContext context) : base(context)
        {
            _context = context;
        }

        public Task<Member> GetLibraryMemberAsync(int libraryId)
        {
            return Task.Run(() =>
            {
                return
                    _context.Members.Where(m => m.Member_id == libraryId)
                        .Include(m => m.Loan_Rule)
                        .FirstOrDefault();
            });
        }
    }
}