using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BookApp.Models;

namespace BookApp.DataAccess.Interface
{
    public interface IBookRepository : IRepository<Book>
    {
        Task<IEnumerable<Book>> SearchBooksAsync(string searchText);
    }
}