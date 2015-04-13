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
    public partial class AddReservationView : System.Web.UI.Page, IAddReservationView
    {
        private string userId = "3001477";
        private VirtualCollege.Utils.Settings.ItemType itemType;
        private string itemId = "0";
        private bool isInputValid = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            // get user id from session
            userId = "3001477";

            // get item type
            if (Request.QueryString["itemType"] != null)
            {
                string itemTypeValue = Request.QueryString["itemType"].ToString();
                switch (itemTypeValue.ToLower())
                {
                    case "book":
                        this.itemType = VirtualCollege.Utils.Settings.ItemType.Book;
                        break;
                    case "room": this.itemType = VirtualCollege.Utils.Settings.ItemType.Room;
                        break;
                    case "pc": this.itemType = VirtualCollege.Utils.Settings.ItemType.Pc;
                        break;
                    case "disc": this.itemType = VirtualCollege.Utils.Settings.ItemType.Disc;
                        break;
                    default:
                        string message = itemTypeValue + " " + Settings.Invalid_Item;
                        Response.Redirect(Link.GetErrorPage(message, ""));
                        break;
                }
            }


            // get item id
            if (Request.QueryString["itemId"] != null)
            {
                itemId = Request.QueryString["itemId"].ToString();
            }

            // connect presenter
            new AddReservationPresenter(this, new ReservationModel());
        }

        public string UserId
        {
            get { return this.userId; }
        }

        public string ItemType
        {
            get { return this.itemType.ToString(); }
        }

        public string ItemId
        {
            get { return this.itemId; }
        }

        public DateTime ExpireDate
        {
            get
            {
                return calExpireDate.SelectedDate;
            }
        }

        protected void valCalendar_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (calExpireDate.SelectedDate == default(DateTime))
            {
                args.IsValid = false;
                this.isInputValid = false;
            }
            else
            {
                args.IsValid = true;
                this.isInputValid = true;
            }
        }


        public event EventHandler placeHoldHandler;

        private VirtualCollege.Utils.Settings.ReserveStatus status;
        public Settings.ReserveStatus Status
        {
            get
            {
                return this.status;
            }
            set
            {
                switch (value)
                {
                    case Settings.ReserveStatus.Pending:
                        // display reserve result
                        lblReserveStatus.Text = Settings.Place_Hold;
                        lblReserveStatus.Visible = true;
                        // hide reserve controls
                        Label1.Visible = false;
                        this.calExpireDate.Visible = false;
                        btnReserve.Visible = false;
                        status = Settings.ReserveStatus.Pending;
                        break;
                }
            }
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            if (isInputValid)
            {
                placeHoldHandler(sender, e);
            }
        }
    }
}