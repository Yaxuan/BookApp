using BookApp.DataAccess.Interface;
using Quartz;
using Quartz.Spi;

namespace BookApp.Job
{
    public class JobFactory : IJobFactory
    {
        private readonly IContext _context;

        public JobFactory(IContext context)
        {
            _context = context;
        }

        public IJob NewJob(TriggerFiredBundle bundle, IScheduler scheduler)
        {
            return new EmailJob(_context);
        }

        public void ReturnJob(IJob job)
        {
        }
    }
}