using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using BookApp.DataAccess.Interface;
using BookApp.DataAccess.Repository;
using BookApp.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace BookApp.Tests.UnitTest.DataAccess
{
    [TestClass]
    public class BookRepositoryTest
    {
        [TestMethod]
        public async Task BookStatusFoundNotNull()
        {
            IBookRepository bookRepository = GetMockedBookStatusViewRepository();

            var result = await bookRepository.GetBookStatusAsync("123456").ConfigureAwait(false);

            Assert.IsNotNull(result);
        }

        [TestMethod]
        public async Task BookStatusFoundIsbn()
        {
            IBookRepository bookRepository = GetMockedBookStatusViewRepository();

            var result = await bookRepository.GetBookStatusAsync("123456").ConfigureAwait(false);

            Assert.AreEqual("123456", result.Isbn);
        }

        [TestMethod]
        public async Task BookStatusFoundItemId()
        {
            IBookRepository bookRepository = GetMockedBookStatusViewRepository();

            var result = await bookRepository.GetBookStatusAsync("123456").ConfigureAwait(false);

            Assert.AreEqual(1, result.ItemId);
        }

        [TestMethod]
        public async Task BookStatusFoundIsAvailable()
        {
            IBookRepository bookRepository = GetMockedBookStatusViewRepository();

            var result = await bookRepository.GetBookStatusAsync("123456").ConfigureAwait(false);

            Assert.AreEqual(false, result.IsAvailable);
        }

        [TestMethod]
        public async Task BookStatusFoundCanLoanOut()
        {
            IBookRepository bookRepository = GetMockedBookStatusViewRepository();

            var result = await bookRepository.GetBookStatusAsync("123456").ConfigureAwait(false);

            Assert.AreEqual(true, result.CanLoanOut);
        }

        [TestMethod]
        public async Task BookStatusNotFound()
        {
            IBookRepository bookRepository = GetMockedBookStatusViewRepository();

            var result = await bookRepository.GetBookStatusAsync("12345").ConfigureAwait(false);

            Assert.IsNull(result);
        }


        [TestMethod]
        public async Task SearchBookIsbnFound()
        {
            IBookRepository bookRepository = SearchBookTestData();

            var result = await bookRepository.SearchBooksAsync("1234").ConfigureAwait(false);

            Assert.AreEqual("1234", result[0].Isbn);
        }

        [TestMethod]
        public async Task SearchBookAuthorLastNameFound()
        {
            IBookRepository bookRepository = SearchBookTestData();

            var result = await bookRepository.SearchBooksAsync("last name1").ConfigureAwait(false);

            Assert.AreEqual("last name1", result.First().Authors.First().Last_name);
        }

        [TestMethod]
        public async Task SearchBookAuthorFirstNameFound()
        {
            IBookRepository bookRepository = SearchBookTestData();

            var result = await bookRepository.SearchBooksAsync("first name1").ConfigureAwait(false);

            Assert.AreEqual("first name1", result.First().Authors.First().First_name);
        }

        [TestMethod]
        public async Task SearchBookPublisherFound()
        {
            IBookRepository bookRepository = SearchBookTestData();

            var result = await bookRepository.SearchBooksAsync("publisher1").ConfigureAwait(false);

            Assert.AreEqual("publisher1", result[0].Publisher);
        }

        [TestMethod]
        public async Task SearchBookNotFound()
        {
            IBookRepository bookRepository = SearchBookTestData();

            var result = await bookRepository.SearchBooksAsync("random").ConfigureAwait(false);

            Assert.AreEqual(result.Count, 0);
        }       

        private IBookRepository SearchBookTestData()
        {
            var authors = new List<Author>()
            {
                new Author {Author_id = 1, Last_name = "last name1", First_name = "first name1"},

                new Author {Author_id = 2, Last_name = "last name2", First_name = "first name2"}
            };
            var books = new List<Book>()
            {
                new Book {Authors = new List<Author>() {authors[0]}, Isbn = "1234", Publisher = "publisher1", Title = "Title1"},
                new Book {Authors = new List<Author>() {authors[1]}, Isbn = "12345", Publisher = "publisher2", Title = "Title2"}
            };

            var data = books.AsQueryable();
            var mockedSet = new Mock<DbSet<Book>>();
            mockedSet.As<IQueryable<Book>>().Setup(m => m.Provider).Returns(data.Provider);
            mockedSet.As<IQueryable<Book>>().Setup(m => m.Expression).Returns(data.Expression);
            mockedSet.As<IQueryable<Book>>().Setup(m => m.ElementType).Returns(data.ElementType);
            mockedSet.As<IQueryable<Book>>().Setup(m => m.GetEnumerator()).Returns(data.GetEnumerator());

            var authorData = authors.AsQueryable();
            var mockedAuthorSet = new Mock<DbSet<Author>>();
            mockedAuthorSet.As<IQueryable<Author>>().Setup(m => m.Provider).Returns(authorData.Provider);
            mockedAuthorSet.As<IQueryable<Author>>().Setup(m => m.Expression).Returns(authorData.Expression);
            mockedAuthorSet.As<IQueryable<Author>>().Setup(m => m.ElementType).Returns(authorData.ElementType);
            mockedAuthorSet.As<IQueryable<Author>>().Setup(m => m.GetEnumerator()).Returns(authorData.GetEnumerator());

            var mockedContext = new Mock<DataContext>();
            mockedContext.Setup(c => c.Books).Returns(mockedSet.Object);
            mockedContext.Setup(c => c.Authors).Returns(mockedAuthorSet.Object);

            IBookRepository bookRepository = new BookRepository(mockedContext.Object);
            return bookRepository;
        }       

        private IBookRepository GetMockedBookStatusViewRepository()
        {
            var bookStatus = new List<BookStatusView>()
            {
                new BookStatusView {Isbn = "123456", ItemId = 1, CanLoanOut = true, IsAvailable = false},
                new BookStatusView {Isbn = "345677", ItemId = 2, CanLoanOut = false, IsAvailable = true}
            };

            var data = bookStatus.AsQueryable();

            var mockedSet = new Mock<DbSet<BookStatusView>>();
            mockedSet.As<IQueryable<BookStatusView>>().Setup(m => m.Provider).Returns(data.Provider);
            mockedSet.As<IQueryable<BookStatusView>>().Setup(m => m.Expression).Returns(data.Expression);
            mockedSet.As<IQueryable<BookStatusView>>().Setup(m => m.ElementType).Returns(data.ElementType);
            mockedSet.As<IQueryable<BookStatusView>>().Setup(m => m.GetEnumerator()).Returns(data.GetEnumerator());

            var mockedContext = new Mock<DataContext>();
            mockedContext.Setup(c => c.BookStatus).Returns(mockedSet.Object);

            IBookRepository bookRepository = new BookRepository(mockedContext.Object);

            return bookRepository;
        }
    }
}