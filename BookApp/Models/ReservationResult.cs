namespace BookApp.Models
{
    public class ReservationResult
    {
        public string LibraryName { get; set; } = "Library 8";

        public int ReservationBatchId { get; set; }

        public int[] ReservedItemIds { get; set; }
    }
}