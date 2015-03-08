using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualCollege.Models.Entity;
using VirtualCollege.Presenter;

namespace VirtualCollege.UserControls
{
    public partial class AddReservationControl : System.Web.UI.UserControl, IAddReservationControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //new AddReservationPresenter(this, new ReservationModel());
        }
        private string userId;
        public string UserId
        {
            get
            {
                return this.userId;
            }
            set
            {
                this.userId = value;
            }
        }
        private string itemType;
        public string ItemType
        {
            get
            {
                return this.itemType;
            }
            set
            {
                this.itemType = value;
            }
        }
        private string itemId;
        public string ItemId
        {
            get
            {
                return this.itemId;
            }
            set
            {
                this.itemId = value;
            }
        }

        public string ExpireDate
        {
            get { return txtExpireDate.Text; }
        }

        public VirtualCollege.Utils.Settings.ReserveStatus Status
        {
            get
            {
                return VirtualCollege.Utils.Settings.ReserveStatus.Pending;
            }
            set
            {
                switch (value)
                {
                    case Utils.Settings.ReserveStatus.Pending:
                        lblReserveStatus.Text = "Reserved";
                        lblReserveStatus.Visible = true;
                        txtExpireDate.Visible = false;
                        break;
                    default: break;
                }

            }
        }

        public event EventHandler ReserveHandler;

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            ReserveHandler(sender, e);
        }
    }
}