using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VirtualCollege.View
{
    public interface IAddDiscView
    {
        string DiscTitle { get; }
        string Artist { get; }
        string Director { get; }
        string Distributor{ get; }
        string ReleaseDate{ get; }
        string Language{ get; }
        string Subtitle{ get; }
        string Category { get; }
        string Description{ get; }
        string Duration{ get; }
        string ThumbPicture{ get; }
        string Status{ get; }

        event EventHandler addDiscListener;
    }
}
