using System;

namespace BookClient.Models
{
    public class Item
    {
        public int Item_id { get; set; }
        public int Item_type { get; set; }
        public int? Subject { get; set; }
        public System.DateTime Create_time { get; set; }

        public virtual Book Book { get; set; }
        public virtual ItemStatu ItemStatu { get; set; }
        public virtual SerialItem SerialItem { get; set; }
        //public virtual WishList WishList { get; set; }
    }
}