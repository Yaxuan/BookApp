using System.Data.Entity;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class UserGroupRepository : Repository<UserGroup>, IUserGroupRepository
    {
        public UserGroupRepository(DbContext context) : base(context)
        {

        }
    }
}