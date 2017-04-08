using System.Data.Entity;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class NormalMemberRepository : Repository<NormalMember>, INormalMemberRepository
    {
        public NormalMemberRepository(DbContext context) : base(context)
        {

        }
    }
}