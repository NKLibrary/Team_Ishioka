using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VirtualCollege.View
{
    public interface IAddReservationView
    {
        string UserId { get; }
        string ItemType { get; }
        string ItemId { get; }
        DateTime ExpireDate { get; }
        VirtualCollege.Utils.Settings.ReserveStatus Status { get; set; }

        event EventHandler placeHoldHandler;
    }
}
