using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookClient.Models
{
    public class Book
    {
        public int ItemId { get; set; }
        public string Isbn { get; set; }
        public string Title { get; set; }
        public int? Language { get; set; }
        public int? Binding { get; set; }
        public string Edition { get; set; }
        public decimal? Price { get; set; }
        public string PriceUnit { get; set; }
        public string Publisher { get; set; }
        public DateTime? PublishTime { get; set; }
        public int? Page { get; set; }
        public byte[] Image { get; set; }
        public DateTime CreateTime { get; set; }
        public string Description { get; set; }
    }
}