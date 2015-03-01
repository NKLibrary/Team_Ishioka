using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VirtualCollege.View
{
    public interface IEditPcView
    {
        string PcId { get; set; }
        string Status { get; set; }
        event EventHandler FillViewHandler;
        event EventHandler EditPcHandler;
    }
}
