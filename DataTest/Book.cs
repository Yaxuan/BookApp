//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataTest
{
    using System;
    using System.Collections.Generic;
    
    public partial class Book
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Book()
        {
            this.Authors = new HashSet<Author>();
        }
    
        public int Item_id { get; set; }
        public string Isbn { get; set; }
        public string Title { get; set; }
        public Nullable<int> Language { get; set; }
        public Nullable<int> Binding { get; set; }
        public string Edition { get; set; }
        public Nullable<decimal> Price { get; set; }
        public string Price_unit { get; set; }
        public string Publisher { get; set; }
        public Nullable<System.DateTime> Publish_time { get; set; }
        public Nullable<int> Page { get; set; }
        public byte[] Image { get; set; }
        public string Description { get; set; }
    
        public virtual Item Item { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Author> Authors { get; set; }
    }
}
