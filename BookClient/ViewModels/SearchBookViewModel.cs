﻿using System.Collections.Generic;
using BookClient.Models;

namespace BookClient.ViewModels
{
    public class SearchBookViewModel
    {
        public string SearchField { get; set; }

        public string Subject { get; set; }

        public List<Book> Books { get; set; } = new List<Book>();
    }
}