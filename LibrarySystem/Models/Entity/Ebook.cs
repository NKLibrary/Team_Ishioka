using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Models.Entity
{
    public struct Ebook
    {
        public string BookId;
        public string BookTitle;
        public string Author;
        public string Publisher;
        public string Category;
        public DateTime PublishedYear;
        public int TotalPages;
        public string ISBN;
        public string Description;
        public string ThumbnailPicture;
        public int AvailableCopies;
        public string Status;

    }
}