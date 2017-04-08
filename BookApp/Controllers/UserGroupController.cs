using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.Controllers
{
    public class UserGroupGroupController : ApiController
    {
        private readonly IContext _context;

        public UserGroupGroupController(IContext context)
        {
            _context = context;
        }

        // GET: api/UserGroups
        [ResponseType(typeof(UserGroup))]
        public async Task<IHttpActionResult> GetUserGroupsAsync()
        {
            var users = await _context.UserGroups.GetAllAsync();

            if (users == null)
            {
                return NotFound();

            }

            return Ok(users);
        }

        // GET: api/UserGroups/5
        [ResponseType(typeof(UserGroup))]
        public async Task<IHttpActionResult> GetAsync(int id)
        {
            UserGroup user = await GetUserGroupAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        // POST: api/UserGroups
        [ResponseType(typeof(UserGroup))]
        public async Task<IHttpActionResult> Post(UserGroup userGroup)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                await _context.UserGroups.AddAsync(userGroup);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return CreatedAtRoute("DefaultApi", new { id = userGroup.User_group_id }, userGroup);
        }

        // PUT: api/UserGroups/5
        public async Task<IHttpActionResult> Put(int id, UserGroup userGroup)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != userGroup.User_group_id)
            {
                return BadRequest();
            }

            try
            {
                await _context.UserGroups.SaveAsync(userGroup);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (await GetUserGroupAsync(id) == null)
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

        // DELETE: api/UserGroups/5
        public async Task<IHttpActionResult> DeleteAsync(int id)
        {
            UserGroup user = await GetUserGroupAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            try
            {
                await _context.UserGroups.RemoveAsync(user);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return Ok();
        }

        [HttpGet]
        [Route("api/usergroups/search/{userGroupName}")]
        public async Task<IHttpActionResult> UserGroupExist(string userGroupName)
        {
            try
            {
                var userGroups = await _context.UserGroups.FindAsync(group => group.Group_name == userGroupName);

                if (userGroups.Any())
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
        private async Task<UserGroup> GetUserGroupAsync(int id)
        {
            return await _context.UserGroups.GetAsync(id);
        }
    }
}
