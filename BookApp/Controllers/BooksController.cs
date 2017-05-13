using System;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.Controllers
{
    public class BooksController : ApiController
    {
        private readonly IContext _context;

        public BooksController(IContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("api/books/search/{searchtext}")]
        [ResponseType(typeof(Book))]
        public async Task<IHttpActionResult> SearchBookAsync(string searchText)
        {
            try
            {
                var books =
                    await _context.Books.SearchBooksAsync(searchText).ConfigureAwait(false);

                if (!books.Any())
                {
                    return NotFound();
                }
                
                return Ok(books);
            }
            catch (Exception e)
            {
                return Content(HttpStatusCode.InternalServerError, e.Message);
            }
        }

        // GET: api/books
        [HttpGet]
        [Route("api/books")]
        [ResponseType(typeof(Book))]
        public async Task<IHttpActionResult> GetBooksAsync()
        {
            try
            {
                var books = await _context.Books.GetAllAsync().ConfigureAwait(false);

                if (books == null)
                {
                    return NotFound();
                }

                return Ok(books);
            }
            catch (Exception e)
            {
                return Content(HttpStatusCode.InternalServerError, e.Message);
            }
        }

        // GET: api/books
        [HttpGet]
        [Route("api/books/{isbn}/status")]
        [ResponseType(typeof(BookStatusView))]
        public async Task<IHttpActionResult> GetBookStatusAsync(string isbn)
        {
            try
            {
                BookStatusView bookStatus = await _context.Books.GetBookStatusAsync(isbn).ConfigureAwait(false);

                if (bookStatus == null)
                {
                    return NotFound();
                }

                return Ok(bookStatus);
            }
            catch (Exception e)
            {
                return Content(HttpStatusCode.InternalServerError, e.Message);
            }
        }

        // GET: api/book/5
        [ResponseType(typeof(Book))]
        public async Task<IHttpActionResult> GetAsync(int id)
        {
            try
            {
                Book book = await _context.Books.GetAsync(id).ConfigureAwait(false);
                if (book == null)
                {
                    return NotFound();
                }

                return Ok(book);
            }
            catch (Exception e)
            {
                return Content(HttpStatusCode.InternalServerError, e.Message);
            }
        }

        // POST: api/Book
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Book/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Book/5
        public void Delete(int id)
        {
        }
    }
}
