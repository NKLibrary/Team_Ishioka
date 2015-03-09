using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VirtualCollege.View
{
    public interface IReservationListView
    {
        object Reservations{set;}
        string SelectedReservationId { get; }

        event EventHandler cancelHandler;

    }
}
