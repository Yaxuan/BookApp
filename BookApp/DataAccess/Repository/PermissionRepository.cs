using System.Data.Entity;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class PermissionRepository : Repository<Permission>, IPermissionRepository
    {
        public PermissionRepository(DbContext context) : base(context)
        {

        }
    }
}