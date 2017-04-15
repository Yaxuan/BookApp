using System;

namespace BookClient.Models
{
    public class ItemStatu
    {
        public int Item_id { get; set; }
        public short Total_copy { get; set; }
        public int? Location_id { get; set; }
        public short? Reserved_copy { get; set; }
        public short? Missing_copy { get; set; }
        public short? Damaged_copy { get; set; }
        public short? Checkout_copy { get; set; }
        public bool Can_loan_out { get; set; }

        public virtual Item Item { get; set; }
        public virtual Location Location { get; set; }
    }
}