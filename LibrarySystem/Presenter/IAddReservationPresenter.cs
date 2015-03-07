using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.Presenter
{
    public interface IAddReservationPresenter
    {
        void AddReservation(Reservation reservation); 
    }
}
