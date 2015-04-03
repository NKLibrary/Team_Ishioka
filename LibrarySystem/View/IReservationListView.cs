using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.View
{
    public interface IReservationListView
    {
        List<Reservation> Reservations{set;}
        string SelectedReservationId { get; }

        event EventHandler cancelHandler;
        
    }
}
