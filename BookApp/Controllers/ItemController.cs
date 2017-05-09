using System;
using System.Net;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.Controllers
{
    public class ItemController : ApiController
    {
        private readonly IContext _context;

        public ItemController(IContext context)
        {
            _context = context;
        }

        // GET: api/Item/Search/
        [HttpGet]
        [Route("api/items/search/{isbn}")]
        [ResponseType(typeof(Item))]
        public async Task<IHttpActionResult> SearchItemAsync(string isbn)
        {
            try
            {
                Item item = null;

                var book = await _context.Books.SingleOrDefaultAsync(b => b.Isbn == isbn).ConfigureAwait(false);
                if (book?.Item_id !=null)
                {
                    item = await _context.Items.GetItemIncludeStatusAsync(book.Item_id).ConfigureAwait(false);
                }

                if (item != null)
                {
                    return Content(HttpStatusCode.Found, item);
                }

                return NotFound();

            }
            catch (Exception e)
            {
                return Content(HttpStatusCode.InternalServerError, e.Message);
            }
        }

        // POST: api/ItemStatus
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/ItemStatus/5
        public void Put(int id, [FromBody]string value)
        {
        }
    }
}
