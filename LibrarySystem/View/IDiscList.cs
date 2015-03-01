using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Presenter;

namespace VirtualCollege.View
{
    public interface IDiscList
    {
        object Disc { set; }
        string SelectedDiscId { get; }
        DiscListPresenter Presenter { get; set; }
    }
}
