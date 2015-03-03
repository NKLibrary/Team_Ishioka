using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Presenter;

namespace VirtualCollege.View
{
    public interface IAddEbookView
    {
        string BookTitle { get;}
        string Author { get; }
        string Publisher { get; }
        string Category { get;}
        string PublishedYear { get;}
        string TotalPages { get; }
        string ISBN { get; }
        string Description { get;  }
        string ThumbnailPicture { get; }
        string AvailableCopies { get; }
        string Status { get; }

        AddEbookPresenter Presenter { get; set; }
    }
}
