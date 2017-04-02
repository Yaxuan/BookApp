using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using BookApp.DataAccess.Interface;

namespace BookApp.DataAccess.Repository
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        protected readonly DbContext Context;

        public Repository(DbContext context)
        {
            Context = context;
        }

        public Task<TEntity> GetAsync(int id)
        {
            // Here we are working with a DbContext. So we don't have DbSets 
            // such as Courses or Authors, and we need to use the generic Set() method to access them.
            return Task.Run(() => Context.Set<TEntity>().Find(id));            
        }

        public async Task<TEntity> GetAsync(string id)
        {
            // Here we are working with a DbContext. So we don't have DbSets 
            // such as Courses or Authors, and we need to use the generic Set() method to access them.
            return await Context.Set<TEntity>().FindAsync(id);
        }

        public async Task<IEnumerable<TEntity>> GetAllAsync()
        {
            return  await Context.Set<TEntity>().ToListAsync();
        }

        public Task<IEnumerable<TEntity>> FindAsync(Expression<Func<TEntity, bool>> predicate)
        {
            return Task.Run(() => Context.Set<TEntity>().Where(predicate).AsEnumerable());
        }

        public Task<TEntity> SingleOrDefaultAsync(Expression<Func<TEntity, bool>> predicate)
        {
            return Task.Run(() => Context.Set<TEntity>().SingleOrDefault(predicate));
        }

        public async Task AddAsync(TEntity entity)
        {
            Context.Set<TEntity>().Add(entity);
            await Context.SaveChangesAsync();
        }

        public async Task AddRangeAsync(IEnumerable<TEntity> entities)
        {
            Context.Set<TEntity>().AddRange(entities);
            await Context.SaveChangesAsync();
        }

        public async Task RemoveAsync(TEntity entity)
        {
            Context.Set<TEntity>().Remove(entity);
            await Context.SaveChangesAsync();
        }

        public async Task RemoveRangeAsync(IEnumerable<TEntity> entities)
        {
            Context.Set<TEntity>().RemoveRange(entities);
            await Context.SaveChangesAsync();
        }

        public async Task SaveAsync(TEntity entity)
        {
            Context.Entry(entity).State = EntityState.Modified;
            Context.Set<TEntity>().Attach(entity);
            await Context.SaveChangesAsync();
        }

        public async Task SaveRangeAsync(IEnumerable<TEntity> entities)
        {
            foreach (var entity in entities)
            {
                Context.Set<TEntity>().Attach(entity);
            }
            await Context.SaveChangesAsync();
        }
    }
}