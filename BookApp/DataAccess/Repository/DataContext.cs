using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    //For testing
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

        public virtual DbSet<Book> Books { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}