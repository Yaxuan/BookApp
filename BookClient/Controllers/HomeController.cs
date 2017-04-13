using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using BookClient.Models;

namespace BookClient.Controllers
{
    public class HomeController : Controller
    {
        

        // GET: Home


        public ActionResult Index()
        {
            //List<Book> books = new List<Book>();
            //HttpClient client = new HttpClient { BaseAddress = new Uri(_bookRestApiLocal) };

            //client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            //HttpResponseMessage response = client.GetAsync("api/books").Result; //TODO Make it async

            //if (response.IsSuccessStatusCode)
            //{
            //    books = response.Content.ReadAsAsync<List<Book>>().Result;
            //}

            return RedirectToAction("Index", "Book");
        }

        //public ActionResult Create()
        //{
        //    return View();
        //}

        //[HttpPost]
        //public ActionResult Create(Book book)
        //{
        //    HttpClient client = new HttpClient { BaseAddress = new Uri(_bookRestApiLocal) };

        //    client.PostAsJsonAsync("api/book", book).ContinueWith(postTask => postTask.Result.EnsureSuccessStatusCode());

        //    return RedirectToAction("book");
        //}

        //public ActionResult Edit()
        //{
        //    throw new NotImplementedException();
        //}

        //public ActionResult Details()
        //{
        //    throw new NotImplementedException();
        //}

        //public ActionResult Delete()
        //{
        //    throw new NotImplementedException();
        //}
    }
}