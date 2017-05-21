using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using BookApp.DataAccess.Interface;
using BookApp.Models;
using Quartz;

namespace BookApp.Job
{
    public class EmailJob : IJob
    {
        private readonly IContext _context;

        public EmailJob(IContext context)
        {
            _context = context;
        }

        public async void Execute(IJobExecutionContext context)
        {
            try
            {

                Debugger.Launch();

                var users = (await _context.Users.FindAsync(user => user.User_id == 81421).ConfigureAwait(false)).ToList();

                foreach (var user in users)
                {
                    using (var message = new MailMessage("ucnlibrary8@gmail.com", "yaxuanhe@hotmail.com"))
                {
                    message.Subject = "Test";
                    message.Body = "Test at " + DateTime.Now;
                    using (SmtpClient client = new SmtpClient
                    {
                        EnableSsl = true,
                        Host = "smtp.gmail.com",
                        Port = 587,
                        Credentials = new NetworkCredential("ucnlibrary8@gmail.com", "library8UCN")
                    })
                    {
                        client.Send(message);
                    }
                }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }    
            
        }
    }
}