using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTest
{
    public static class UserMemberDataGen
    {
        private static readonly DataContext Context = new DataContext();

        public static void GenerateSimpleUserMemberData()
        {


            int memberNumber = 1;
            int userNumber = 1;

            //Create user
            for (int i = 0; i < userNumber; i++)
            {
                var user = new List<User>
                {
                    new User {User_id = i, Create_time = DateTime.Now, User_group_id = 1, User_name = "test " + i, Password = "pass" + i, FIrst_name = "first name " + i, Last_name = "last name " + i}
                };
                Context.Set<User>().AddRange(user);
            }

            //Create member
            for (int i = 0; i < memberNumber; i++)
            {
                var member = new List<Member>
                {
                    new Member {Member_id = i, Address = "Test address " + i, City = "Test city" + 1,
                    //Create normal member
                        NormalMember = new NormalMember
                        {
                        Member_id = i,
                        Member_type = 0,
                        Ssn = DateTime.Now.Millisecond.ToString(),
                        User_id = i,
                    } }
                };
                Context.Set<Member>().AddRange(member);
            }

            Context.SaveChanges();

        }

        public static void TearDownSimpleUserMemberData()
        {
            var normalMembers = Context.Set<NormalMember>().ToList();
            var members = Context.Set<Member>().ToList();
            var users = Context.Set<User>().ToList();
            Context.Set<NormalMember>().RemoveRange(normalMembers);
            Context.Set<Member>().RemoveRange(members);
            Context.Set<User>().RemoveRange(users);
            Context.SaveChanges();
        }
    }
}
