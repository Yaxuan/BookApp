using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class BookRepository : Repository<Book>, IBookRepository
    {
        public BookRepository(DataContext context) : base(context)
        {
        }
   
    }
}