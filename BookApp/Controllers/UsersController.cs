using System;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.Controllers
{
    public class UsersController : ApiController
    {
        private readonly IContext _context;

        public UsersController(IContext context)
        {
            _context = context;
        }

        // GET: api/Users
        [ResponseType(typeof(User))]
        public async Task<IHttpActionResult> GetUsersAsync()
        {
            var users = await _context.Users.GetAllAsync();

            if (users == null)
            {
                return NotFound();

            }

            return Ok(users);
        }

        // GET: api/Users/5
        [ResponseType(typeof(User))]
        public async Task<IHttpActionResult> GetAsync(int id)
        {
            User user = await GetUserAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        // POST: api/Users
        [ResponseType(typeof(User))]
        public async Task<IHttpActionResult> Post(User user)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                user.Create_time = DateTime.Now;
                await _context.Users.AddAsync(user);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return CreatedAtRoute("DefaultApi", new { id = user.User_id }, user);
        }

        // PUT: api/Users/5
        public async Task<IHttpActionResult> Put(int id, User user)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != user.User_id)
            {
                return BadRequest();
            }

            try
            {
                await _context.Users.SaveAsync(user);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (await GetUserAsync(id) == null)
                {
                    return NotFound();
                }

                return Conflict();
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return Ok();
        }

        // DELETE: api/Users/5
        public async Task<IHttpActionResult> DeleteAsync(int id)
        {
            User user = await GetUserAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            try
            {
                await _context.Users.RemoveAsync(user);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return Ok();
        }

        [HttpGet]
        [Route("api/users/search/{username}")]
        public async Task<IHttpActionResult> UserExist(string username)
        {            
            try
            {
                var users = await _context.Users.FindAsync(user => user.User_name == username);

                if (users.Any())
                {
                    return StatusCode(HttpStatusCode.Found);
                }

                return NotFound();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        /* Private Methods */
        private async Task<User> GetUserAsync(int id)
        {
            return await _context.Users.GetAsync(id);
        }
    }
}
