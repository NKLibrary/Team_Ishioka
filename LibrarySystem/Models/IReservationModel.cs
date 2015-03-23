using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.Models
{
   public interface IReservationModel
    {
       void AddReservation(Reservation reservation);
       void DeleteReservation(Reservation reservation);
       void UpdateReservation(VirtualCollege.Models.EntityFramework.Reservation reservation);
       Reservation GetReservationById(string reservationId);
       List<VirtualCollege.Models.EntityFramework.Reservation> GetAllReservations();

       List<Reservation> GetReservationByUser(string userId);


       List<EntityFramework.Reservation> GetReservationByStatus(Utils.Settings.ReserveStatus reserveStatus);

    }
}
