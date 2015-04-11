using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models.EntityFramework;
using VirtualCollege.Utils;

namespace VirtualCollege.Presenter
{
    public class ProcessReservationPresenter : IProcessReservationPresenter
    {
        private View.IProcessReservationView view;
        private Models.IReservationModel model;

        public ProcessReservationPresenter(View.IProcessReservationView processReservationView, Models.IReservationModel reservationModel)
        {
            // TODO: Complete member initialization
            this.view = processReservationView;
            this.model = reservationModel;
            view.processReservation += ProcessReservation;
            view.cancelReservation += CancelReservation;
        }

        private void CancelReservation(object sender, EventArgs e)
        {
            string reservationId = this.view.SelectedReservationId;
            VirtualCollege.Models.Entity.Reservation reservation = new VirtualCollege.Models.Entity.Reservation();
            reservation.reservationId = reservationId;
            model.DeleteReservation(reservation);
        }

        private void ProcessReservation(object sender, EventArgs e)
        {
            string reservationId = view.SelectedReservationId;
            Reservation reservation = model.GetReservationById(reservationId);
            reservation.Status = VirtualCollege.Utils.Settings.ReserveStatus.Processed.ToString();
            reservation.ProcessDate = DateTime.Now;
            model.UpdateReservation(reservation);
            SendEmailTo(reservation.UserId);
        }

        private void SendEmailTo(int userId)
        {
            Member member = model.GetMemberById(userId+"");
            String fullName = member.FirstName + " " + member.LastName;
            string email = member.Email;
            if (!EmailManager.IsValidEmail(email))
            {
                view.DisplayMessage("Sorry, email address: " + email + " is invalid. Notification cannot be reached.");
            }
            else
            {
                EmailManager em = EmailManager.getInstance();
                em.SendEmail(new string[]{email}, "Reservation request confirmed from Ishioka Library", Settings.GetProcessMessage(fullName, DateTime.Now));
            }
        }

        

        public List<Models.EntityFramework.Reservation> getTodoReservations()
        {
            return model.GetReservationByStatus(VirtualCollege.Utils.Settings.ReserveStatus.Pending);
        }

        public List<Models.EntityFramework.Reservation> getHistoryReservations()
        {
            return model.GetReservationByStatus(Utils.Settings.ReserveStatus.Processed);
        }

        // todo
        public void UpdateReservation()
        {
            VirtualCollege.Models.EntityFramework.Reservation reservation = new Models.EntityFramework.Reservation();
            //reservation.ReservationId = view.SelectedReservationId;
            //reservation.PickupDate;

        }



        public Member GetSelectedMember(string userId)
        {
            return model.GetMemberById(userId);
        }


        public string GetUserName(string userId)
        {
            return model.getMemberNameById(userId);
        }
    }
}