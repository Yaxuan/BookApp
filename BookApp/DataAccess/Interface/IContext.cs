namespace BookApp.DataAccess.Interface
{
    public interface IContext
    {
        IBookRepository Books { get; }
        IUserRepository Users { get; }
        IMemberRepository Members { get; }
        IUserGroupRepository UserGroups { get; }
        IPermissionRepository Permissions { get; }
        INormalMemberRepository NormalMembers { get; }
        int Complete();
    }
}