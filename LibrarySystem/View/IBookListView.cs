using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.Entity;
using VirtualCollege.Presenter;

namespace VirtualCollege.View
{
    public interface IBookListView
    {
        object Books { get; set; }
        BookListPresenter Presenter { get; set; }
    }
}
