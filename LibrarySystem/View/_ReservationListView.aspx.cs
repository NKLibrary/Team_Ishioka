using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualCollege.Models.Entity;
using VirtualCollege.Presenter;

namespace VirtualCollege.View
{
    public partial class ReservationListView : System.Web.UI.Page, IReservationListView
    {
        private ReservationListPresenter presenter;
        protected void Page_Load(object sender, EventArgs e)
        {
            presenter = new ReservationListPresenter(this, new ReservationModel());

            LoadReservationList();
        }

        private void LoadReservationList()
        {
            // get current user id
            string userId = "3001477";
            List<Reservation> reservations = presenter.LoadReservationByUser(userId);
            Reservations = from reservation in reservations
                   select new { reservation.reservationId, reservation.itemType, reservation.expireDate };
        }

        public object Reservations
        {
            set
            {
                gvReservtions.DataSource = value;
                gvReservtions.DataBind();
                gvReservtions.DataKeyNames = new string[]{"reservationId"};
            }
        }

        private string selectedReservationId;
        public string SelectedReservationId
        {
            get { return this.selectedReservationId; }
        }

        public event EventHandler cancelHandler;

        protected void gvReservtions_DataBound(object sender, EventArgs e)
        {
            //gvReservtions.Columns[0].Visible = false;
        }

        protected void gvReservtions_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.selectedReservationId = gvReservtions.DataKeys[e.NewEditIndex].Value.ToString();
            cancelHandler(sender, e);
            LoadReservationList();
        }

        protected void gvReservtions_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}