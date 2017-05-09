using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookClient.Models
{
    public class Book
    {
        public int Item_id { get; set; }
        public string Isbn { get; set; }
        public string Title { get; set; }
        public int? Language { get; set; }
        public int? Binding { get; set; }
        public string Edition { get; set; }
        public decimal? Price { get; set; }
        public string Price_unit { get; set; }
        public string Publisher { get; set; }
        public DateTime? Publish_time { get; set; }
        public int? Page { get; set; }
        public byte[] Image { get; set; }
        public string Description { get; set; }

        public Item Item { get; set; }
        public ICollection<Author> Authors { get; set; } = new List<Author>() {new Author() {Last_name = "test", First_name = "test"} };
    }
}