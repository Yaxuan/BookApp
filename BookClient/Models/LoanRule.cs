using System;

namespace BookClient.Models
{
    public class LoanRule
    {
        public int Loan_rule_id { get; set; }
        public string Loan_rule_name { get; set; }
        public short Max_loan_book { get; set; }
        public short Max_loan_day { get; set; }
        public short Grace_day { get; set; }
        public short Notification_day { get; set; }
        public short? Mail_choice { get; set; }
    }
}