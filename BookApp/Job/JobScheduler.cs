using System.ComponentModel;
using BookApp.DataAccess.Repository;
using Quartz;
using Quartz.Impl;

namespace BookApp.Job
{
    public class JobScheduler
    {
        public static void Start()
        {
            IScheduler scheduler = StdSchedulerFactory.GetDefaultScheduler();
            scheduler.Start();

            //IJobDetail job = JobBuilder.Create<EmailJob>().Build();
            scheduler.JobFactory = new JobFactory(new UnitOfWork(new DataContext()));

            scheduler.ScheduleJob(
        JobBuilder.Create<EmailJob>().Build(),
        TriggerBuilder.Create().WithSimpleSchedule(s => s.WithIntervalInHours(24).RepeatForever()).Build());

            // start scheduler


            //ITrigger trigger = TriggerBuilder.Create()
            //    .WithDailyTimeIntervalSchedule
            //      (s =>
            //         s.WithIntervalInHours(24)
            //        .OnEveryDay()
            //        .StartingDailyAt(TimeOfDay.HourAndMinuteOfDay(0, 0))
            //      )
            //    .Build();

            //ITrigger trigger = TriggerBuilder.Create().StartNow().WithSimpleSchedule(s => s.WithIntervalInSeconds(60).RepeatForever()).Build();

            //scheduler.ScheduleJob(scheduler.JobFactory.NewJob(scheduler., scheduler), trigger);
            
        }
    }
}