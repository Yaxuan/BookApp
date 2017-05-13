using System;
using System.ComponentModel.DataAnnotations;

namespace BookApp.Models
{
    public class LoanRequirement
    {
        [Required]
        public int MemberId { get; set; }

        [Required]
        public string Isbn { get; set; }

        [Required]
        public int CopyNumber { get; set; }
    }
}