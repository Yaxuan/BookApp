using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Mvc;
using BookClient.Enum;
using BookClient.Interface;
using BookClient.Models;
using BookClient.ViewModels;

namespace BookClient.Controllers
{
    public class LoginController : Controller
    {
        private readonly string _serviceUri = "http://localhost:60673/";


        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        //Validate login and retrieve permission
        public async Task<ActionResult> Index(UserLoginViewModel userLoginViewModel)
        {
            if (ModelState.IsValid)
            {
                HttpClient client = new HttpClient {BaseAddress = new Uri(_serviceUri) };

                try
                {
                    HttpResponseMessage response = await client.PostAsJsonAsync("api/users/Login", userLoginViewModel);

                    if (response.StatusCode == HttpStatusCode.Found)
                    {
                        var user = await response.Content.ReadAsAsync<User>();
                        Session["UserId"] = user.User_id;
                        Session["UserName"] = user.User_name;
                        Session["UserGroupId"] = user.User_group_id;

                        //Get permissions
                        HttpResponseMessage permissionResponse = await client.GetAsync("api/permissions/usergroupid/" + user.User_group_id);

                        var permissions = await permissionResponse.Content.ReadAsAsync<List<Permission>>();

                        if (permissions != null)
                        {
                            //Pass session as data for enabling web page visibility
                            Session["UpdateBookPermission"] = permissions.FirstOrDefault(p => p.Action == PermissionEnum.UpdateBook.ToString())?.Action;
                            Session["UpdateMemberPermission"] = permissions.FirstOrDefault(p => p.Action == PermissionEnum.UpdateMember.ToString())?.Action;
                            Session["UpdateLoanPermission"] = permissions.FirstOrDefault(p => p.Action == PermissionEnum.UpdateLoan.ToString())?.Action;
                            Session["UpdateUserPermission"] = permissions.FirstOrDefault(p => p.Action == PermissionEnum.UpdateUser.ToString())?.Action;
                        }

                        return RedirectToAction("LoggedIn");
                    }
                    else if (response.StatusCode == HttpStatusCode.NotFound)
                    {
                        ModelState.AddModelError("", "User name or password is wrong.");
                        return View(userLoginViewModel);
                    }
                    else
                    {
                        ModelState.AddModelError("Error", "Error: " + await response.Content.ReadAsStringAsync());
                        return View(userLoginViewModel);
                    }
                }
                catch (HttpRequestException e)
                {
                    ModelState.AddModelError("Error", "Error: " + e.Message);
                    return View(userLoginViewModel);
                }

            }

            return View();
        }

        public ActionResult LoggedIn()
        {
            if (Session["UserId"] != null)
            {
                return View();
            }

            return RedirectToAction("Index");
        }

        public ActionResult Logout()
        {
            Session.Abandon();
            return RedirectToAction("Index");
        }
    }
}