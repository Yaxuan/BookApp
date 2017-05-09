using System;
using BookApp.DataAccess.Interface;

namespace BookApp.DataAccess.Repository
{
    public class UnitOfWork : IContext, IDisposable
    {
        private readonly DataContext _context;

        public UnitOfWork(DataContext context)
        {
            _context = context;
            Books = new BookRepository(_context);
            Users = new UserRepository(_context);
            Members = new MemberRepository(_context);
            UserGroups = new UserGroupRepository(_context);
            Permissions = new PermissionRepository(_context);
            NormalMembers = new NormalMemberRepository(_context);
            ItemStatus = new ItemStatusRepository(_context);
            Items = new ItemRepository(_context);
            SerialItems = new SerialItemRepository(_context);
        }

        public IBookRepository Books { get; }
        public IUserRepository Users { get; }
        public IMemberRepository Members { get; }
        public IUserGroupRepository UserGroups { get; }
        public IPermissionRepository Permissions { get; }
        public INormalMemberRepository NormalMembers { get; }
        public IItemStatusRepository ItemStatus { get; }
        public IItemRepository Items { get; }
        public ISerialItemRepository SerialItems { get; }

        public int Complete()
        {
            return _context.SaveChanges();
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                _context?.Dispose();
            }
        }
    }

}