﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataTest
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class GLSEntities1 : DbContext
    {
        public GLSEntities1()
            : base("name=GLSEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Author> Authors { get; set; }
        public virtual DbSet<Book> Books { get; set; }
        public virtual DbSet<BookLog> BookLogs { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<Fine> Fines { get; set; }
        public virtual DbSet<InsideReservation> InsideReservations { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<ItemStatu> ItemStatus { get; set; }
        public virtual DbSet<Library> Libraries { get; set; }
        public virtual DbSet<Loan_Rule> Loan_Rule { get; set; }
        public virtual DbSet<Location> Locations { get; set; }
        public virtual DbSet<Member> Members { get; set; }
        public virtual DbSet<MemberCampusAddress> MemberCampusAddresses { get; set; }
        public virtual DbSet<MemberCard> MemberCards { get; set; }
        public virtual DbSet<NormalMember> NormalMembers { get; set; }
        public virtual DbSet<OutsideReservation> OutsideReservations { get; set; }
        public virtual DbSet<Permission> Permissions { get; set; }
        public virtual DbSet<Reservation> Reservations { get; set; }
        public virtual DbSet<SerialItem> SerialItems { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserGroup> UserGroups { get; set; }
        public virtual DbSet<WishList> WishLists { get; set; }
    }
}
