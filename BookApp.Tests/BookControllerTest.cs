using System;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Results;
using BookApp.Controllers;
using BookApp.DataAccess;
using BookApp.DataAccess.Repository;
using BookApp.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BookApp.Tests
{
    [TestClass]
    public class BookControllerTest
    {
        [TestMethod]
        public async Task GetBook_ShouldReturnProductWithSameID()
        {
            //var context = new UnitOfWork(new DataContext());
            //var controller = new BooksController(context);

            //context.Books.Add(GetDemoBook());

            //OkNegotiatedContentResult<Book> book = await controller.GetBook(1) as OkNegotiatedContentResult<Book>;

            //Assert.IsNotNull(book);
            //Assert.AreEqual(1, book.Content.book_no);
            //Assert.AreEqual("12346", book.Content.isbn);
            //Assert.AreEqual("Test", book.Content.title);
            //Assert.AreEqual("Peter", book.Content.author);
        }

        private static Book GetDemoBook()
        {
            return new Book();
        }
    }
}
