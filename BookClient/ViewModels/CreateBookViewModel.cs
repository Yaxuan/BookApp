using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BookClient.Models;

namespace BookClient.ViewModels
{
    public class CreateBookViewModel
    {
        public int Item_id { get; set; }
        public int Item_type { get; set; }
        public int? Subject { get; set; }
        public DateTime Create_time { get; set; }

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

        public short Total_copy { get; set; }
        public int? Location_id { get; set; }
        public short? Reserved_copy { get; set; }
        public short? Missing_copy { get; set; }
        public short? Damaged_copy { get; set; }
        public short? Checkout_copy { get; set; }
        public bool Can_loan_out { get; set; }
        public string Location_code { get; set; }

        public virtual ICollection<SerialItem> SerialItems { get; set; }
    }
}