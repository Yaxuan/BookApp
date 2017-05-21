using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace BookApp.DataAccess.Interface
{
    public interface IRepository<TEntity> where TEntity: class
    {
        Task<TEntity> GetAsync(int id);

        Task<TEntity> GetAsync(string id);

        Task<IEnumerable<TEntity>> GetAllAsync();

        Task<IEnumerable<TEntity>> FindAsync(Expression<Func<TEntity, bool>> predicate);

        Task<TEntity> SingleOrDefaultAsync(Expression<Func<TEntity, bool>> predicate);

        Task AddAsync(TEntity entity);

        Task AddRangeAsync(IEnumerable<TEntity> entities);

        void AddRange(IEnumerable<TEntity> entities);

        Task RemoveAsync(TEntity entity);

        Task RemoveRangeAsync(IEnumerable<TEntity> entities);

        Task SaveAsync(TEntity entity);

        void Save(TEntity entity);

        Task SaveRangeAsync(IEnumerable<TEntity> entities);

        void SaveRange(IEnumerable<TEntity> entities);

        //Task<long> GetSequenceNoAsync(string sequenceName);

    }
}