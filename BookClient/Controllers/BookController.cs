using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using BookClient.Enum;
using BookClient.Interface;
using BookClient.Models;
using BookClient.ViewModels;

namespace BookClient.Controllers
{
    public class BookController : Controller
    {
        private readonly string _serviceUri;

        public BookController(IServiceFactory serviceFactory)
        {
            _serviceUri = serviceFactory.GetServiceUri();
        }

        // GET: Book
        public ActionResult Index()
        {            
            return View();
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

        public ActionResult Create()
        {
            return View(new CreateBookViewModel());
        }

        public async Task<ActionResult> SearchAsync(SearchBookViewModel searchBookViewModel)
        {
            HttpClient client = new HttpClient { BaseAddress = new Uri(_serviceUri) };

            try
            {
                var bookViewModel = new SearchBookViewModel();

                HttpResponseMessage response =
                    await client.GetAsync("api/books/search/" + searchBookViewModel.SearchField +
                                          (string.IsNullOrEmpty(searchBookViewModel.Subject)
                                              ? null
                                              : "/" + searchBookViewModel.Subject)).ConfigureAwait(false);

                if (response.StatusCode == HttpStatusCode.Found)
                {
                    bookViewModel.Books = await response.Content.ReadAsAsync<List<Book>>().ConfigureAwait(false);
                }
                else if (response.StatusCode == HttpStatusCode.NotFound)
                {
                    ModelState.AddModelError("", "No books found.");
                    return View(bookViewModel);
                }

                return View("Index", bookViewModel);
            }
            catch (HttpRequestException e)
            {
                ModelState.AddModelError("Error", "Error: " + e.Message);
                return View();
            }
        }
    }
}