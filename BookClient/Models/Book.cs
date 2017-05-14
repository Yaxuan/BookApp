using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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

        [Display(Name = "Price Unit")]
        public string Price_unit { get; set; }
        public string Publisher { get; set; }

        [Display(Name = "Publish Time")]
        public DateTime? Publish_time { get; set; }
        public int? Page { get; set; }
        public byte[] Image { get; set; }
        public string Description { get; set; }

        public Item Item { get; set; }
        public ICollection<Author> Authors { get; set; } = new List<Author>() {new Author() {Last_name = "test", First_name = "test"} };

        [Display(Name = "Authors")]
        public string AuthorNames => string.Join(",", Authors.Select(a => a.First_name + " " + a.Last_name));

        public string Available
            =>
                Item?.ItemStatu?.Total_copy - Item?.ItemStatu?.Missing_copy - Item?.ItemStatu?.Damaged_copy -
                Item?.ItemStatu?.Reserved_copy > 0
                    ? "Yes"
                    : "No";

        [Display(Name = "Can Loan Out")]
        public string CanLoanOut => Item?.ItemStatu?.Can_loan_out == true ? "Yes" : "No";

        public string Subject => "Sample Subject" + Item?.Subject;
    }
}