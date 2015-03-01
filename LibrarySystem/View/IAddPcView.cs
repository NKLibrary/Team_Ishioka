using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VirtualCollege.View
{
    public interface IAddPcView
    {
        string Status { get; }

        event EventHandler addPc;
    }
}
