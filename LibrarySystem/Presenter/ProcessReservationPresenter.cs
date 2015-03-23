using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Presenter
{
    public class ProcessReservationPresenter : IProcessReservationPresenter
    {
        private View.IProcessReservationView view;
        private Models.IReservationModel model;

        public ProcessReservationPresenter(View.ProcessReservationView processReservationView, Models.IReservationModel reservationModel)
        {
            // TODO: Complete member initialization
            this.view = processReservationView;
            this.model = reservationModel;
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
        public void updateReservation()
        {
            VirtualCollege.Models.EntityFramework.Reservation reservation = new Models.EntityFramework.Reservation();
            //reservation.ReservationId = view.SelectedReservationId;
            //reservation.PickupDate;

        }
    }
}