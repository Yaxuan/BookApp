using System.Collections.Generic;
using System.Data.Entity;
using System.Threading.Tasks;
using BookApp.DataAccess.Interface;
using BookApp.Models;
using System.Linq;

namespace BookApp.DataAccess.Repository
{
    public class ItemRepository : Repository<Item>, IItemRepository
    {
        private readonly DataContext _context;

        public ItemRepository(DataContext context) : base(context)
        {
            _context = context;
        }

        public Task<Item> GetItemIncludeStatusAsync(int itemId)
        {
            return Task.Run(() =>
            {
                return _context.Items.Where(i => i.Item_id == itemId)?.Include(i => i.ItemStatu).Include(i => i.SerialItems).FirstOrDefault();

            });
        }
    }
}