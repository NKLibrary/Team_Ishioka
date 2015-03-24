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
    public partial class ProcessReservationListViewM : System.Web.UI.Page, IProcessReservationView
    {
         private IProcessReservationPresenter presenter;
        protected void Page_Load(object sender, EventArgs e)
        {
            presenter = new ProcessReservationPresenter(this, new ReservationModel());

                LoadTodoList();

        }

        public object Reservations
        {
            set
            {
                gvReservation.DataSource = value;
                gvReservation.DataBind();
                gvReservation.DataKeyNames = new string[] { "ReservationId" };
                
            }
        }

        private string selecteReservationId;
        public string SelectedReservationId
        {
            // todo
            get { return selecteReservationId; }
        }

        public Mode SelectedMode
        {
            get
            {
                if (rbtnTodo.Checked) return Mode.Todo;
                else return Mode.History;
            }
        }

        public event EventHandler switchMode;

        public event EventHandler processReservation;

        protected void rbtnTodo_CheckedChanged(object sender, EventArgs e)
        {
            LoadTodoList();
        }

        private void LoadTodoList()
        {
            List<VirtualCollege.Models.EntityFramework.Reservation> list = presenter.getTodoReservations();
            Reservations = from reservation in list
                           select reservation;
        }

        protected void rbtnHistory_CheckedChanged(object sender, EventArgs e)
        {
            LoadHistoryList();
            // hide process button

        }

        private void LoadHistoryList()
        {
            List<VirtualCollege.Models.EntityFramework.Reservation> list = presenter.getHistoryReservations();
            Reservations = from reservation in list
                           select new { reservation.ReservationId, reservation.ItemType, reservation.ExpireDate };
            // hide process button
            for (int i = 0; i < gvReservation.Rows.Count; i++)
            {
                LinkButton lb = gvReservation.Rows[i].FindControl("LinkButton1") as LinkButton;
                lb.Visible = false;
            }
        }

        protected void gvReservation_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.selecteReservationId = gvReservation.DataKeys[e.NewEditIndex].Value.ToString();
            processReservation(sender, e);
            LoadTodoList();
            e.NewEditIndex = -1;
        }


        public void DisplayMessage(string message)
        {
            Response.Write("<script>alert('" + message + "');</script>");
        }
    }
}