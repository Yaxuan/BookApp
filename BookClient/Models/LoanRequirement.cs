namespace BookClient.Models
{
    public class LoanRequirement
    {
        public int MemberId { get; set; }

        public string Isbn { get; set; }

        public int CopyNumber { get; set; }
    }
}