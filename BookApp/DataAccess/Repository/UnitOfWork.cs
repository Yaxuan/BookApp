using BookApp.DataAccess.Interface;

namespace BookApp.DataAccess.Repository
{
    public class UnitOfWork : IContext
    {
        private readonly DataContext _context;

        public UnitOfWork(DataContext context)
        {
            _context = context;
            Books = new BookRepository(_context);
        }

        public IBookRepository Books { get; }

        public int Complete()
        {
            return _context.SaveChanges();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}