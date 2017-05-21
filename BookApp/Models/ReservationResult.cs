namespace BookApp.Models
{
    public class ReservationResult
    {
        public string LibraryName { get; set; } = "Library 8";

        public int ReservationBatchId { get; set; }

        public int[] ReservedItemIds { get; set; }

        public override bool Equals(object obj)
        {
            bool isEqual = false;

            var result = obj as ReservationResult;

            if (result != null)
            {
                isEqual = LibraryName == result.LibraryName &&
                          ReservationBatchId == result.ReservationBatchId && ReservedItemIds?.Length == result.ReservedItemIds?.Length;

                if (ReservedItemIds != null && result?.ReservedItemIds !=null && isEqual)
                {
                    for (int i = 0; i < ReservedItemIds.Length; i++)
                    {
                        if (ReservedItemIds[i] != result.ReservedItemIds[i])
                        {
                            isEqual = false;
                            break;
                        }
                    }
                }
            }

            return isEqual;
        }
    }
}