using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.UserControls;

namespace VirtualCollege.Presenter
{
    public class AddReservationPresenter : IAddReservationPresenter
    {
        private IAddReservationControl view;
        private IReservationModel model;

        public AddReservationPresenter(IAddReservationControl view, IReservationModel model)
        {
            this.view = view;
            this.model = model;
            this.view.ReserveHandler += Reserve;
        }

        private void Reserve(object sender, EventArgs e)
        {
            view.Status = VirtualCollege.Utils.Settings.ReserveStatus.Pending;

        }

        public void AddReservation(Models.Entity.Reservation reservation)
        {
            throw new NotImplementedException();
        }
    }
}