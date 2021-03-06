﻿using System.Data.Entity;
using System.Deployment.Internal;

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
        IItemStatusRepository ItemStatus { get; }
        IItemRepository Items { get; }
        ISerialItemRepository SerialItems { get; }
        IReservationRepository Reservations { get; }

        IContextHelper ContextHelper { get;  }
        int Complete();
        //DbContextTransaction BeginTransaction();
    }
}