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
    
    public partial class Item
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Item()
        {
            this.SerialItems = new HashSet<SerialItem>();
        }
    
        public int Item_id { get; set; }
        public int Item_type { get; set; }
        public Nullable<int> Subject { get; set; }
        public System.DateTime Create_time { get; set; }
    
        public virtual Book Book { get; set; }
        public virtual ItemStatu ItemStatu { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SerialItem> SerialItems { get; set; }
        public virtual WishList WishList { get; set; }
    }
}
