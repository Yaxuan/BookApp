using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace BookApp.DataAccess.Repository
{
    public class DataContext : DbContext
    {
        public DataContext()
            : base("name=DataContext")
        {
            this.Configuration.LazyLoadingEnabled = false;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
        //test 2
        public virtual DbSet<Book> Books { get; set; }
    }
}