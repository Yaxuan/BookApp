using System;

namespace BookApp.CustomException
{
    public class MemberNotFoundException : Exception
    {
        public override string Message { get; }

        public MemberNotFoundException(string message)
        {
            Message = message;
        }
    }
}