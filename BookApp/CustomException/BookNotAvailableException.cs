using System;

namespace BookApp.CustomException
{
    public class BookNotAvailableException : Exception
    {
        public override string Message { get; }

        public BookNotAvailableException(string message)
        {
            Message = message;
        }
    }
}