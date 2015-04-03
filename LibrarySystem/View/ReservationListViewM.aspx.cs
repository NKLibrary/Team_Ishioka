using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualCollege.Models.Entity;
using VirtualCollege.Presenter;
using VirtualCollege.Utils;

namespace VirtualCollege.View
{
    public partial class ReservationListViewM : System.Web.UI.Page, IReservationListView
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
            if (Session["Userid"] != null)
            {
                string userId = Session["Userid"].ToString();
                //string userId = "3001477";

                // get reservatons
                List<Reservation> reservations = presenter.LoadReservationByUser(userId);
                // set grid view data source
                Reservations = reservations;
                //Reservations = from reservation in reservations
                //               orderby reservation.reservationId descending
                //               select new { reservation.reservationId, reservation.itemType, reservation.expireDate, reservation.processDate };
            }
            else
            {
                Response.Write("<script>alert('Please login first');window.location.href='" + Link.GetLoginPage() + "?foward=" + Link.GetReservationList() + "'</script>");
                //Response.Redirect("../Login.aspx");
            }
        }

        public List<Reservation> Reservations
        {
            set
            {
                //gvReservtions.DataSource = value;
                //gvReservtions.DataBind();
                //gvReservtions.DataKeyNames = new string[] { "reservationId" };

                var datasource = from reservation in value
                                 orderby reservation.reservationId descending
                                 select new
                                 {
                                     ReservationId = reservation.reservationId,
                                     ItemType = reservation.itemType,
                                     ExpireDate = reservation.expireDate.ToShortDateString(),
                                     ProcessDate = reservation.processDate.Equals(Settings.Default_Reservation_Date) ? "" : reservation.processDate.ToShortDateString(),
                                     Status = reservation.status,
                                     AllowCancel = reservation.status == Settings.ReserveStatus.Processed.ToString()
                                 };
                gvReservtions.DataSource = datasource;
                // disable auto generate columns from datasource
                gvReservtions.AutoGenerateColumns = false;

                // manually add columns
                BoundField bfReservationId = new BoundField();
                bfReservationId.DataField = "ReservationId";
                bfReservationId.HeaderText = "ReservationId";
                bfReservationId.Visible = false;
                gvReservtions.Columns.Add(bfReservationId);

                BoundField bfItemtype = new BoundField();
                bfItemtype.DataField = "ItemType";
                bfItemtype.HeaderText = "Item Type";
                gvReservtions.Columns.Add(bfItemtype);

                BoundField bfExpireDate = new BoundField();
                bfExpireDate.DataField = "ExpireDate";
                bfExpireDate.HeaderText = "Expire Date";
                gvReservtions.Columns.Add(bfExpireDate);

                BoundField bfProcessDate = new BoundField();
                bfProcessDate.DataField = "ProcessDate";
                bfProcessDate.HeaderText = "Process Date";
                gvReservtions.Columns.Add(bfProcessDate);

                BoundField bfAllowCancel = new BoundField();
                bfAllowCancel.DataField = "AllowCancel";
                bfAllowCancel.HeaderText = "";
                bfAllowCancel.Visible = false;
                gvReservtions.Columns.Add(bfAllowCancel);

                BoundField bfStatus = new BoundField();
                bfStatus.DataField = "Status";
                bfStatus.HeaderText = "Status";
                gvReservtions.Columns.Add(bfStatus);

                gvReservtions.DataKeyNames = new string[] { "ReservationId", "AllowCancel" };
                gvReservtions.DataBind();
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

        }

        protected void gvReservtions_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //this.selectedReservationId = gvReservtions.DataKeys[e.NewEditIndex].Value.ToString();// default is the first key
            this.selectedReservationId = gvReservtions.DataKeys[e.NewEditIndex]["ReservationId"].ToString();
            cancelHandler(sender, e);
            // reload
            Response.Redirect(Link.GetReservationList());
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect(Link.GetAddReservation());
        }

        protected void gvReservtions_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            string a = e.Row.FindControl("AllowCancel").ToString();
            Console.WriteLine();
        }

        protected void gvReservtions_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.DataItem != null)
            {
                bool allowCancel = (bool)gvReservtions.DataKeys[e.Row.DataItemIndex]["AllowCancel"];
                if (allowCancel)
                {
                    e.Row.FindControl("btnCancel").Visible = false;
                }
            }
        }

    }
}