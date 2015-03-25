using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.Entity;
using VirtualCollege.Models.EntityFramework;

namespace VirtualCollege.Models
{
   public interface IReservationModel
    {
       // place a reserve request
       List<VirtualCollege.Models.Entity.Reservation> GetReservationByUser(string userId);
       void AddReservation(VirtualCollege.Models.Entity.Reservation reservation);
       void DeleteReservation(VirtualCollege.Models.Entity.Reservation reservation);

       // process reserve request
       void UpdateReservation(VirtualCollege.Models.EntityFramework.Reservation reservation);
       VirtualCollege.Models.EntityFramework.Reservation GetReservationById(string reservationId);
       List<VirtualCollege.Models.EntityFramework.Reservation> GetAllReservations();
       List<EntityFramework.Reservation> GetReservationByStatus(Utils.Settings.ReserveStatus reserveStatus);
       Member GetMemberById(String memberId);

       string getMemberNameById(string userId);
    }
}
