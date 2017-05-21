using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class ItemStatusRepository : Repository<ItemStatu>, IItemStatusRepository
    {
        public ItemStatusRepository(DataContext context) : base(context)
        {
        }
    }
}