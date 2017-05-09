using System;
using System.Collections.Generic;

namespace BookClient.Models
{
    public class Item
    {
        public int Item_id { get; set; }
        public int Item_type { get; set; }
        public int? Subject { get; set; }
        public DateTime Create_time { get; set; }

        public virtual Book Book { get; set; }
        public virtual ItemStatu ItemStatu { get; set; }
        public virtual ICollection<SerialItem> SerialItems { get; set; }
        //public virtual WishList WishList { get; set; }
    }
}