using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.DataAccess.Repository
{
    public class SerialItemRepository : Repository<SerialItem>, ISerialItemRepository
    {
        public SerialItemRepository(DataContext context) : base(context)
        {
        }
    }
}