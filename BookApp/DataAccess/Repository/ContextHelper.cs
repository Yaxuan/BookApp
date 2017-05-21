using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Threading.Tasks;
using BookApp.DataAccess.Interface;

namespace BookApp.DataAccess.Repository
{
    public class ContextHelper : IContextHelper
    {
        private readonly DataContext _context;

        public ContextHelper(DataContext context)
        {
            _context = context;
        }

        public DbContextTransaction BeginTransaction()
        {
            return _context.Database.BeginTransaction();
        }

        public async Task<long> GetSequenceNoAsync(string sequenceName)
        {
            DbRawSqlQuery<long> rawQuery = _context.Database.SqlQuery<long>("SELECT NEXT VALUE FOR dbo." + sequenceName + ";");
            return await rawQuery.SingleAsync().ConfigureAwait(false);
        }

    }
}