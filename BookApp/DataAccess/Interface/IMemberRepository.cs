using System;
using System.Threading.Tasks;
using BookApp.Models;

namespace BookApp.DataAccess.Interface
{
    public interface IMemberRepository : IRepository<Member>
    {
        Task<Member> GetLibraryMemberAsync(int libraryId);
    }
}