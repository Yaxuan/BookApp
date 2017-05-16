using System;

namespace BookApp.CustomException
{
    public class ExceedLoanLimitException : Exception
    {
        public override string Message { get; }

        public ExceedLoanLimitException(string message)
        {
            Message = message;
        }
    }
}