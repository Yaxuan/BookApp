using System.Collections.Generic;
using System.Threading.Tasks;
using BookApp.Models;

namespace BookApp.DataAccess.Interface
{
    public interface IItemRepository : IRepository<Item>
    {
        Task<Item> GetItemIncludeStatusAsync(int itemId);

        Task<List<SerialItem>> GetAvailableSerialItemsAsync(int qty, string isbn);
    }
}