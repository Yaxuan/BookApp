using System.Data.Entity;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class MemberRepository : Repository<Member>, IMemberRepository
    {
        public MemberRepository(DbContext context) : base(context)
        {
            
        }
    }
}