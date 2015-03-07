using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VirtualCollege.UserControls
{
    public interface IAddReservationControl
    {
        string UserId { get; set; }
        string ItemType { get; set; }
        string ItemId { get; set; }
        string ExpireDate { get; }
        VirtualCollege.Utils.Settings.ReserveStatus Status { get; set; }

        event EventHandler ReserveHandler;
    }
}
