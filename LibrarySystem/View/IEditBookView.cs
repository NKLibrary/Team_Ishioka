using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Presenter;

namespace VirtualCollege.View
{
    public interface IEditBookView
    {
        string BookId { get;  }
        string BookTitle { get; set; }
        string Author { get; set; }
        string Publisher { get; set; }
        string Category { get; set; }
        string PublishedYear { get; set; }
        string TotalPages { get; set; }
        string ISBN { get; set; }
        string Description { get; set; }
        string ThumbnailPicture { get; set; }
        string AvailableCopies { get; set; }
        string Status { get; set; }

        EditBookPresenter Presenter { get; set; }
    }
}
