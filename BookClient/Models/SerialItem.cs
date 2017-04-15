using System;
using System.Collections.Generic;

namespace BookClient.Models
{
    public class SerialItem
    {
        public int Serial_item_id { get; set; }
        public int Item_id { get; set; }
        public short Serial_item_status { get; set; }
        public short Library_status { get; set; }
        public int? Location_id { get; set; }
        public virtual Location Location { get; set; }
    }
}