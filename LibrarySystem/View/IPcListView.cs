using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VirtualCollege.View
{
    public interface IPcListView
    {
        object Pcs { set; }
        string SelectedPcId { get; }

        event EventHandler fillView;
        event EventHandler deletePc;
    }
}
