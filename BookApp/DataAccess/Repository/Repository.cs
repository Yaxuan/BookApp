using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
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

        public virtual DbQuery<TEntity> Include(string path)
        {
            return Context.Set<TEntity>().Include(path);
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
            return await Context.Set<TEntity>().FindAsync(id).ConfigureAwait(false);
        }

        public async Task<IEnumerable<TEntity>> GetAllAsync()
        {
            return  await Context.Set<TEntity>().ToListAsync().ConfigureAwait(false);
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
            await Context.SaveChangesAsync().ConfigureAwait(false);
        }

        public Task AddRangeAsync(IEnumerable<TEntity> entities)
        {
            return Task.Run(() =>
            {
                AddRange(entities);
            });
        }

        public void AddRange(IEnumerable<TEntity> entities)
        {
            Context.Set<TEntity>().AddRange(entities);
            Context.SaveChanges();
        }

        public async Task RemoveAsync(TEntity entity)
        {
            Context.Set<TEntity>().Remove(entity);
            await Context.SaveChangesAsync().ConfigureAwait(false);
        }

        public async Task RemoveRangeAsync(IEnumerable<TEntity> entities)
        {
            Context.Set<TEntity>().RemoveRange(entities);
            await Context.SaveChangesAsync().ConfigureAwait(false);
        }

        public Task SaveAsync(TEntity entity)
        {
            return Task.Run(() =>
            {
                Save(entity);
            });
        }

        public void Save(TEntity entity)
        {
            Context.Set<TEntity>().Attach(entity);
            Context.Entry(entity).State = EntityState.Modified;
            Context.SaveChanges();
        }

        public Task SaveRangeAsync(IEnumerable<TEntity> entities)
        {
            return Task.Run(() =>
            {
                SaveRange(entities);
            });            
        }

        public void SaveRange(IEnumerable<TEntity> entities)
        {
            foreach (var entity in entities)
            {
                Context.Set<TEntity>().Attach(entity);
                Context.Entry(entity).State = EntityState.Modified;
            }
            Context.SaveChanges();
        }

        public async Task<long> GetSequenceNoAsync(string sequenceName)
        {
            DbRawSqlQuery<long> rawQuery = Context.Database.SqlQuery<long>("SELECT NEXT VALUE FOR dbo." + sequenceName + ";");
            return await rawQuery.SingleAsync().ConfigureAwait(false);
        }
    }
}