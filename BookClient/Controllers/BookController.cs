using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BookClient.Models;
using BookClient.ViewModels;

namespace BookClient.Controllers
{
    public class BookController : Controller
    {
        // GET: Book
        public ActionResult Index()
        {
            
            var bookList = new List<Book>();
            var book = new Book
            {
                Binding = 1,
                Create_time = DateTime.Now,
                Description = "This is a good book.",
                Edition = "4",
                Isbn = "1000342356",
                Item_id = 1,
                Language = 1,
                Page = 400,
                Price = 500,
                Price_unit = "kroner",
                Publish_time = DateTime.Now,
                Publisher = "Aarhus university",
                Title = "Mathematics"
            };

            var book2 = new Book
            {
                Binding = 1,
                Create_time = DateTime.Now,
                Description = "This is another good book.",
                Edition = "1",
                Isbn = "1000342357",
                Item_id = 2,
                Language = 1,
                Page = 200,
                Price = 400,
                Price_unit = "kroner",
                Publish_time = DateTime.Now,
                Publisher = "Aarhus university",
                Title = "Clinik"
            };

            bookList.Add(book);
            bookList.Add(book2);

            SearchBookViewModel books = new SearchBookViewModel() {Books = bookList};
            return View(books);
        }


        public ActionResult Details(int id)
        {
            //TODO create a new view and show that
            return RedirectToAction("Index", "Book", id);
        }

        public ActionResult Edit(int id)
        {
            throw new NotImplementedException();
        }

        public ActionResult Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}