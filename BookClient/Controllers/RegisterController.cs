using System;
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
    public class RegisterController : Controller
    {
        private readonly IServiceFactory _serviceFactory;

        public RegisterController(IServiceFactory serviceFactory)
        {
            _serviceFactory = serviceFactory;
        }

        // GET: Register
        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]        
        public async Task<ActionResult> Register(UserAccountViewModel userAccountViewModel)
        {
            if (ModelState.IsValid)
            {
                //Create user
                HttpClient client = new HttpClient { BaseAddress = new Uri(_serviceFactory.GetServiceUri()) };

                User user = new User
                {
                    Create_time = DateTime.Now,
                    User_name = userAccountViewModel.UserName,
                    FIrst_name = userAccountViewModel.FirstName,
                    Last_name = userAccountViewModel.LastName,
                    User_group_id = 1,
                    Is_Female = userAccountViewModel.IsFemale,
                    Password = userAccountViewModel.Password,
                    Email = userAccountViewModel.Email
                };

                try
                {
                    //Create user
                    var userCtrResponse = await client.PostAsJsonAsync("api/users", user);

                    if (userCtrResponse.StatusCode == HttpStatusCode.Created)
                    {
                        var newUser = await userCtrResponse.Content.ReadAsAsync<User>();

                        //Create member

                        Member member = new Member { Address = userAccountViewModel.HomeAddress, City = userAccountViewModel.City, Post_code = userAccountViewModel.PostCode, Loan_rule_id = 1 };
                        var memberCtrResponse = await client.PostAsJsonAsync("api/member", member).ContinueWith(postTask => postTask.Result.EnsureSuccessStatusCode());
                        var newMember = await memberCtrResponse.Content.ReadAsAsync<Member>();

                        //Create normal member
                        NormalMember normalMember = new NormalMember { Ssn = userAccountViewModel.Ssn, User_id = newUser.User_id, Member_type = (int)MemberTypeEnum.Normal, Member_id = newMember.Member_id };

                        await client.PostAsJsonAsync("api/NormalMember", normalMember).ContinueWith(postTask => postTask.Result.EnsureSuccessStatusCode());

                        ModelState.Clear();

                        ViewBag.Message = userAccountViewModel.UserName + " is registered successfully.";
                    }
                    else
                    {
                        ViewBag.Message = "Error: " + await userCtrResponse.Content.ReadAsStringAsync();
                    }               
                    
                }
                catch (HttpRequestException e)
                {
                    ViewBag.Message = e.Message;
                }
                
            }

            return View();
        }
    }
}