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
            Configuration.LazyLoadingEnabled = false;
            Configuration.ProxyCreationEnabled = false;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }

        public virtual DbSet<Book> Books { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Member> Members { get; set; }
        public virtual DbSet<UserGroup> UserGroups { get; set; }
        public virtual DbSet<NormalMember> NormalMembers { get; set; }
        public virtual DbSet<Permission> Permissions { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<Author> Authors { get; set; }
        public virtual DbSet<BookStatusView> BookStatus { get; set; }
        public virtual DbSet<ItemStatu> ItemStatus { get; set; }

        public virtual DbSet<Reservation> Reservations { get; set; }
    }
}