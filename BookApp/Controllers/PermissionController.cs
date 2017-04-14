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
    public class PermissionController : ApiController
    {
        private readonly IContext _context;

        public PermissionController(IContext context)
        {
            _context = context;
        }

        // GET: api/Permissions
        [ResponseType(typeof(Permission))]
        public async Task<IHttpActionResult> GetPermissionsAsync()
        {
            var users = await _context.Permissions.GetAllAsync();

            if (users == null)
            {
                return NotFound();

            }

            return Ok(users);
        }

        // GET: api/Permissions/5
        [ResponseType(typeof(Permission))]
        public async Task<IHttpActionResult> GetAsync(int id)
        {
            Permission permission = await GetPermissionAsync(id);
            if (permission == null)
            {
                return NotFound();
            }

            return Ok(permission);
        }

        // GET: api/Permissions/UserGroupId
        [HttpGet]
        [ResponseType(typeof(Permission))]
        [Route("api/permissions/usergroupid/{id}")]
        public async Task<IHttpActionResult> GetUserGroupPermissionsAsync(int id)
        {
            try
            {
                var permissions = (await _context.Permissions.FindAsync(p => p.UserGroups.Any(g => g.User_group_id == id))).ToList();

                if (!permissions.Any())
                {
                    return NotFound();
                }

                return Ok(permissions);
            }
            catch (Exception e)
            {
                return Content(HttpStatusCode.InternalServerError, e.Message);
            }
           
        }


        // POST: api/Permissions
        [ResponseType(typeof(Permission))]
        public async Task<IHttpActionResult> Post(Permission permission)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                await _context.Permissions.AddAsync(permission);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return CreatedAtRoute("DefaultApi", new { id = permission.Permision_id }, permission);
        }

        // PUT: api/Permissions/5
        public async Task<IHttpActionResult> Put(int id, Permission permission)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != permission.Permision_id)
            {
                return BadRequest();
            }

            try
            {
                await _context.Permissions.SaveAsync(permission);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (await GetPermissionAsync(id) == null)
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

        // DELETE: api/Permissions/5
        public async Task<IHttpActionResult> DeleteAsync(int id)
        {
            Permission user = await GetPermissionAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            try
            {
                await _context.Permissions.RemoveAsync(user);
            }
            catch (Exception e)
            {
                return InternalServerError();
            }

            return Ok();
        }

        /* Private Methods */
        private async Task<Permission> GetPermissionAsync(int id)
        {
            return await _context.Permissions.GetAsync(id);
        }
    }
}
