namespace BookApp.DataAccess.Interface
{
    public interface IContext
    {
        IBookRepository Books { get; }

        IUserRepository Users { get; }
        int Complete();
    }
}