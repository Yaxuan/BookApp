using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookClient.Models
{
    public class Member
    {
        public int Member_id { get; set; }
        public string Address { get; set; }
        public int? Post_code { get; set; }
        public string City { get; set; }
        public int? Loan_rule_id { get; set; }
    }
}