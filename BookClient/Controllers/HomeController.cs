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
        private readonly string _bookRestApi = "http://localhost:60673/";

        private readonly string _bookRestApiTest = "http://localhost:8080/"; //soupUI

        private readonly string _bookRestApiLocal = "http://localhost:60673/";

        // GET: Home
        public ActionResult Index()
        {
            List<Book> books = new List<Book>();
            HttpClient client = new HttpClient {BaseAddress = new Uri(_bookRestApi)};

            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            HttpResponseMessage response = client.GetAsync("api/books").Result; //TODO Make it async

            if (response.IsSuccessStatusCode)
            {
                books = response.Content.ReadAsAsync<List<Book>>().Result;
            }

            return View(books);
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Book book)
        {
            HttpClient client = new HttpClient { BaseAddress = new Uri(_bookRestApi) };

            client.PostAsJsonAsync("api/book", book).ContinueWith(postTask => postTask.Result.EnsureSuccessStatusCode());

            return RedirectToAction("index");
        }

        public ActionResult Edit()
        {
            throw new NotImplementedException();
        }

        public ActionResult Details()
        {
            throw new NotImplementedException();
        }

        public ActionResult Delete()
        {
            throw new NotImplementedException();
        }
    }
}