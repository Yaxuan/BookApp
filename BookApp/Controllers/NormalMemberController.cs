using System;
using System.Data.Entity.Infrastructure;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.Controllers
{
    public class NormalMemberController : ApiController
    {
        private readonly IContext _context;

        public NormalMemberController(IContext context)
        {
            _context = context;
        }

        // GET: api/NormalMembers
        [ResponseType(typeof(NormalMember))]
        public async Task<IHttpActionResult> GetNormalMembersAsync()
        {
            var users = await _context.NormalMembers.GetAllAsync();

            if (users == null)
            {
                return NotFound();

            }

            return Ok(users);
        }

        // GET: api/NormalMembers/5
        [ResponseType(typeof(NormalMember))]
        public async Task<IHttpActionResult> GetAsync(int id)
        {
            NormalMember normalMember = await GetNormalMemberAsync(id);
            if (normalMember == null)
            {
                return NotFound();
            }

            return Ok(normalMember);
        }

        [HttpGet]
        [Route("api/NormalMembers/Search/{userId}")]
        [ResponseType(typeof(NormalMember))]
        public async Task<IHttpActionResult> GetNormalMemberByUserIdAsync(int userId)
        {
            NormalMember normalMember = await _context.NormalMembers.GetNormalMemberByUserIdAsync(userId).ConfigureAwait(false);
            if (normalMember == null)
            {
                return NotFound();
            }

            return Ok(normalMember);
        }

        // POST: api/NormalMembers
        [ResponseType(typeof(NormalMember))]
        public async Task<IHttpActionResult> Post(NormalMember normalMember)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                await _context.NormalMembers.AddAsync(normalMember);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return CreatedAtRoute("DefaultApi", new { id = normalMember.Member_id }, normalMember);
        }

        // PUT: api/NormalMembers/5
        public async Task<IHttpActionResult> Put(int id, NormalMember normalMember)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != normalMember.Member_id)
            {
                return BadRequest();
            }

            try
            {
                await _context.NormalMembers.SaveAsync(normalMember);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (await GetNormalMemberAsync(id) == null)
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

        // DELETE: api/NormalMembers/5
        public async Task<IHttpActionResult> DeleteAsync(int id)
        {
            NormalMember user = await GetNormalMemberAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            try
            {
                await _context.NormalMembers.RemoveAsync(user);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return Ok();
        }

        //[HttpGet]
        //[Route("api/normalmembers/search/{username}")]
        //public async Task<IHttpActionResult> NormalMemberExist(string username)
        //{
        //    try
        //    {
        //        var users = await _context.NormalMembers.FindAsync(user => user.NormalMember_name == username);

        //        if (users.Any())
        //        {
        //            return StatusCode(HttpStatusCode.Found);
        //        }

        //        return NotFound();
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e);
        //        throw;
        //    }
        //}

        /* Private Methods */
        private async Task<NormalMember> GetNormalMemberAsync(int id)
        {
            return await _context.NormalMembers.GetAsync(id);
        }
    }
}
