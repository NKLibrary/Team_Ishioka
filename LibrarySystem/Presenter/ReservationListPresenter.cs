using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class ReservationListPresenter
    {

        private IReservationListView view;
        private IReservationModel model;
        public ReservationListPresenter(IReservationListView view, IReservationModel model)
        {
            this.view = view;
            this.model = model;
            this.view.cancelHandler += CancelReservation;
        }

        private void CancelReservation(object sender, EventArgs e)
        {
            string reservationId = this.view.SelectedReservationId;
            VirtualCollege.Models.Entity.Reservation reservation = new VirtualCollege.Models.Entity.Reservation();
            reservation.reservationId = reservationId;
            model.DeleteReservation(reservation);
        }

        internal List<VirtualCollege.Models.Entity.Reservation> LoadReservationByUser(string userId)
        {
            return model.GetReservationByUser(userId);
        }
    }
}