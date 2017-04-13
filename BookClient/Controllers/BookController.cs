using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BookClient.Models;

namespace BookClient.Controllers
{
    public class BookController : Controller
    {
        // GET: Book
        public ViewResult Index()
        {
            var bookList = new List<Book>();
            var book = new Book()
            {
                Binding = 1,
                CreateTime = DateTime.Now,
                Description = "This is a good book.",
                Edition = "4",
                Isbn = "1000342356",
                ItemId = 1,
                Language = 1,
                Page = 400,
                Price = 500,
                PriceUnit = "kroner",
                PublishTime = DateTime.Now,
                Publisher = "Aarhus university",
                Title = "Mathematics"
            };

            var book2 = new Book()
            {
                Binding = 1,
                CreateTime = DateTime.Now,
                Description = "This is another good book.",
                Edition = "1",
                Isbn = "1000342357",
                ItemId = 2,
                Language = 1,
                Page = 200,
                Price = 400,
                PriceUnit = "kroner",
                PublishTime = DateTime.Now,
                Publisher = "Aarhus university",
                Title = "Clinik"
            };

            bookList.Add(book);
            bookList.Add(book2);

            return View(bookList);
        }


        public ActionResult Details(int id)
        {
            //TODO create a new view and show that
            return RedirectToAction("Index", "Book", id);
        }
    }
}