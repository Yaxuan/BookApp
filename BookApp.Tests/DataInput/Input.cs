using System;
using System.Collections.Generic;
using BookApp.Models;

namespace BookApp.Tests.DataInput
{
    public static class Input
    {
        private static string isbn = "123456789";

        /// <summary>
        /// FTC1.1.1
        /// Get a available book for a normal member to reserve
        /// </summary>
        /// <returns></returns>
        public static Tuple<Item, Member, BookStatusView, LoanRequirement> TestCaseInput1()
        {
            var normalMember = new Member
            {
                Member_id = 1,
                NormalMember = new NormalMember { Member_id = 1, Member_type = 1 },
                Loan_Rule = GetNormalLoanRule()
            };

            var itemId = 1;

            var item = new Item
            {
                Item_id = 1,
                Book = GetBook(itemId),
                ItemStatu = GetItemStatus(itemId),               
                Subject = 1,
                Create_time = DateTime.Now,
                Item_type = 1,
                SerialItems = GetSerialItems(itemId)
            };

            var bookStatus = new BookStatusView { CanLoanOut = true, IsAvailable = true, Isbn = isbn, ItemId = 1 };

            var loanRequirement = new LoanRequirement
            {
                MemberId = 1,
                Isbn = isbn,
                CopyNumber = 1
            };

            return Tuple.Create(item, normalMember, bookStatus, loanRequirement);
        }

        /// <summary>
        /// FTC1.1.1
        /// </summary>
        /// <returns></returns>
        public static Tuple<Item, Member, BookStatusView, LoanRequirement> TestCaseInput2()
        {
            var libraryMember = new Member
            {
                Member_id = 1,
                Library = new Library() {Member_id = 1, Name = "Library"},
                Loan_Rule = GetNormalLoanRule()
            };

            var itemId = 1;

            var item = new Item
            {
                Item_id = 1,
                Book = GetBook(itemId),
                ItemStatu = GetItemStatus(itemId, false),
                Subject = 1,
                Create_time = DateTime.Now,
                Item_type = 1,
                SerialItems = GetSerialItems(itemId)
            };

            var bookStatus = new BookStatusView { CanLoanOut = false, IsAvailable = true, Isbn = isbn, ItemId = 1 };

            var loanRequirement = new LoanRequirement
            {
                MemberId = 1,
                Isbn = isbn,
                CopyNumber = 1
            };

            return Tuple.Create(item, libraryMember, bookStatus, loanRequirement);
        }

        /// <summary>
        /// FTC1.1.1
        /// </summary>
        /// <returns></returns>
        public static Tuple<Item, Member, BookStatusView, LoanRequirement> TestCaseInput3()
        {
            var libraryMember = new Member
            {
                Member_id = 1,
                NormalMember = new NormalMember { Member_id = 1, Member_type = 1 },
                Loan_Rule = GetNormalLoanRule()
            };

            var itemId = 1;

            var item = new Item
            {
                Item_id = 1,
                Book = GetBook(itemId),
                ItemStatu = GetItemStatus(itemId, false),
                Subject = 1,
                Create_time = DateTime.Now,
                Item_type = 1,
                SerialItems = GetSerialItems(itemId)
            };

            var bookStatus = new BookStatusView { CanLoanOut = false, IsAvailable = true, Isbn = isbn, ItemId = 1 };

            var loanRequirement = new LoanRequirement
            {
                MemberId = 1,
                Isbn = isbn,
                CopyNumber = 1
            };

            return Tuple.Create(item, libraryMember, bookStatus, loanRequirement);
        }

        private static Loan_Rule GetNormalLoanRule()
        {
            return new Loan_Rule()
            {
                Rule_name = "normal",
                Loan_rule_id = 1,
                Grace_day = 7,
                Mail_choice = 1,
                Max_loan_book = 5,
                Max_loan_day = 30,
                Notification_day = 7
            };
        }

        private static List<SerialItem> GetSerialItems(int itemId)
        {
            return new List<SerialItem>() { new SerialItem() { Item_id = itemId, Serial_item_id = 1, Serial_item_status = 1, Library_status = 1 } };
        }

        private static ItemStatu GetItemStatus(int itemId, bool canLoanOut = true)
        {
            return new ItemStatu
            {
                Item_id = itemId,
                Can_loan_out = canLoanOut,
                Checkout_copy = 0,
                Damaged_copy = 0,
                Missing_copy = 0,
                Total_copy = 1,
                Reserved_copy = 0
            };
        }

        private static Book GetBook(int itemId)
        {
            return new Book()
            {
                Item_id = itemId,
                Authors = new List<Author>()
                {
                    new Author() {Author_id = 1, First_name = "Daniel", Last_name = "Smith"}
                },
                Title = "testbook",
                Isbn = isbn
            };
        }
    }
}
