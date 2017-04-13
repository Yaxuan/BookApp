using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using BookClient.Enum;
using BookClient.Models;
using BookClient.ViewModels;

namespace BookClient.Controllers
{
    public class RegisterController : Controller
    {
        // GET: Register
        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> Register(UserAccount userAccount)
        {
            if (ModelState.IsValid)
            {
                //Create user
                HttpClient client = new HttpClient { BaseAddress = new Uri(BookAppUri.BookRestApiLocalTestUrl) };

                User user = new User
                {
                    Create_time = DateTime.Now,
                    User_name = userAccount.UserName,
                    FIrst_name = userAccount.FirstName,
                    Last_name = userAccount.LastName,
                    User_group_id = 1,
                    Is_Female = userAccount.IsFemale,
                    Password = userAccount.Password
                };

                try
                {
                    //Create user
                    var userCtrResponse = await client.PostAsJsonAsync("api/users", user);

                    if (userCtrResponse.StatusCode == HttpStatusCode.Created)
                    {
                        var newUser = await userCtrResponse.Content.ReadAsAsync<User>();

                        //Create member

                        Member member = new Member { Address = userAccount.HomeAddress, City = userAccount.City, Post_code = userAccount.PostCode, Loan_rule_id = 1 };
                        var memberCtrResponse = await client.PostAsJsonAsync("api/member", member).ContinueWith(postTask => postTask.Result.EnsureSuccessStatusCode());
                        var newMember = await memberCtrResponse.Content.ReadAsAsync<Member>();

                        //Create normal member
                        NormalMember normalMember = new NormalMember { Ssn = userAccount.Ssn, User_id = newUser.User_id, Member_type = (int)MemberTypeEnum.Normal, Member_id = newMember.Member_id };

                        await client.PostAsJsonAsync("api/NormalMember", normalMember).ContinueWith(postTask => postTask.Result.EnsureSuccessStatusCode());

                        ModelState.Clear();

                        ViewBag.Message = userAccount.UserName + " is registered successfully.";
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