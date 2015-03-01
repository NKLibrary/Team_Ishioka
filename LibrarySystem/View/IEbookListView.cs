using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Presenter;

namespace VirtualCollege.View
{
    public interface IEbookListView
    {
        object Books { get; set; }
        EbookListPresenter Presenter { get; set; }

    }
}
