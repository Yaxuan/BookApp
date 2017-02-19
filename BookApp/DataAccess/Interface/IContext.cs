namespace BookApp.DataAccess.Interface
{
    public interface IContext
    {
        IBookRepository Books { get; }
        int Complete();
    }
}