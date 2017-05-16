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

        public Item GetItemIncludeStatus(int itemId)
        {
            return _context.Items.Where(i => i.Item_id == itemId)?.Include(i => i.ItemStatu).Include(i => i.SerialItems).FirstOrDefault();
        }

        public Task<int> GetReservedBooksAsync(int loanRequirementMemberId)
        {
            return Task.Run(() =>
            {
                return _context.Reservations.Count(r => r.Member.Member_id == loanRequirementMemberId && (r.Status == 1 || r.Status == 2)); //Reserved or checkout
            });
        }

        public Task<List<SerialItem>> GetAvailableSerialItemsAsync(int qty, string isbn)
        {
            return Task.Run(() =>
            {
                var item =
                    _context.Items.Where(i => _context.Books.Any(b => b.Isbn == isbn && i.Item_id == b.Item_id) && _context.ItemStatus.Any(s => s.Item_id == i.Item_id))
                        .Include(i => i.SerialItems)
                        .FirstOrDefault();

                return item?.SerialItems?.Where(i => i.Library_status == 1).ToList();
            });
        }
    }
}