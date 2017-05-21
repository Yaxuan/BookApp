using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class BookRepository : Repository<Book>, IBookRepository
    {
        private readonly DataContext _context;

        public BookRepository(DataContext context) : base(context)
        {
            _context = context;
        }

        public Task<List<Book>> SearchBooksAsync(string searchText)
        {
            return Task.Run(() =>
            {
                return _context.Books.Where(b =>
                        b.Isbn.Contains(searchText) || b.Title.Contains(searchText) ||
                        b.Publisher.Contains(searchText) ||
                        b.Authors.Any(a => a.First_name.Contains(searchText) || a.Last_name.Contains(searchText))).Include(b => b.Authors).ToList();

            });

        }

        public Task<BookStatusView> GetBookStatusAsync(string isbn)
        {
            return Task.Run(() =>
            {
                return _context.BookStatus.FirstOrDefault(b => b.Isbn == isbn);

            });
        }     
    }
}