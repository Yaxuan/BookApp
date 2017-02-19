using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using BookApp.DataAccess.Interface;

namespace BookApp.DataAccess.Repository
{
    public class BookRepository : Repository<Book>, IBookRepository
    {
        public BookRepository(DataContext context) : base(context)
        {
        }

        public DataContext Context
        {
            get { return Context as DataContext; }
        }
    }
}