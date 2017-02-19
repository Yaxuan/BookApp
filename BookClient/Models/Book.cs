using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookClient.Models
{
    public class Book
    {
        public int BookNo { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public string Review { get; set; }
        public string Isbn { get; set; }
    }
}