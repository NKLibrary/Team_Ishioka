using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Models.Entity
{
    public class Book
    {
        public string BookId { get; set; }
        public string BookTitle { get; set; }
        public string Author { get; set; }
        public string Publisher { get; set; }
        public string Category { get; set; }
        public DateTime PublishedYear { get; set; }
        public int TotalPages { get; set; }
        public string ISBN { get; set; }
        public string Description { get; set; }
        public string ThumbnailPicture { get; set; }
        public int AvailableCopies { get; set; }
        public string Status { get; set; }
    }
}