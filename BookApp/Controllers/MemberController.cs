using System;
using System.Data.Entity.Infrastructure;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.Controllers
{
    public class MemberController : ApiController
    {
        private readonly IContext _context;

        public MemberController(IContext context)
        {
            _context = context;
        }

        // GET: api/Member
        public async Task<IHttpActionResult> GetMembersAsync()
        {
            var members = await _context.Members.GetAllAsync();

            if (members == null)
            {
                return NotFound();

            }

            return Ok(members);
        }
        // GET: api/Member/5
        [ResponseType(typeof(Member))]
        public async Task<IHttpActionResult> GetAsync(int id)
        {
            Member member = await GetMemberAsync(id); 
            if (member == null)
            {
                return NotFound();
            }

            return Ok(member);
        }

        // POST: api/Member
        [ResponseType(typeof(Member))]
        public async Task<IHttpActionResult> Post(Member member)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                await _context.Members.AddAsync(member);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return CreatedAtRoute("DefaultApi", new { id = member.Member_id }, member);
        }

        // PUT: api/Member/5
        public async Task<IHttpActionResult> Put(int id, Member member)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != member.Member_id)
            {
                return BadRequest();
            }

            try
            {
                await _context.Members.SaveAsync(member);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (await GetMemberAsync(id) == null)
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

        // DELETE: api/Member/5
        public async Task<IHttpActionResult> DeleteAsync(int id)
        {
            Member member = await GetMemberAsync(id);
            if (member == null)
            {
                return NotFound();
            }

            try
            {
                await _context.Members.RemoveAsync(member);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return Ok();
        }

        /* Private Methods */
        private async Task<Member> GetMemberAsync(int id)
        {
            return await _context.Members.GetAsync(id);
        }
    }
}
