using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.EntityFramework;

namespace VirtualCollege.Presenter
{
    public interface IProcessReservationPresenter
    {
        List<VirtualCollege.Models.EntityFramework.Reservation> getTodoReservations();
        List<Reservation> getHistoryReservations();
        void UpdateReservation();
        Member GetSelectedMember(string userId);
    }
}
