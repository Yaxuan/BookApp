using System;
using System.Collections.Generic;

namespace BookClient.Models
{
    public class Author
    {
        private string first_name;


        public int Author_id { get; set; }

        public string First_name { get; set; }

        public string Last_name { get; set; }

        public string Country { get; set; }

        public DateTime? Birthday { get; set; }

        public string AuthorName { get; set; }

        public virtual ICollection<Book> Books { get; set; }
    }
}