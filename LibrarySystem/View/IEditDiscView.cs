using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VirtualCollege.View
{
    public interface IEditDiscView
    {
        string DiscId { get; set; }
        string DiscTitle { get; set; }
        string Artist { get; set; }
        string Director { get; set; }
        string Distributor { get; set; }
        string ReleaseDate { get; set; }
        string Language { get; set; }
        string Subtitle { get; set; }
        string Category { get; set; }
        string Description { get; set; }
        string Duration { get; set; }
        string ThumbPicture { get; set; }
        string Status { get; set; }

        event EventHandler fillViewListener;
        event EventHandler updateListener;
    }
}
