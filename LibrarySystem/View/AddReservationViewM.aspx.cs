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
    public partial class AddReservationViewM : System.Web.UI.Page, IAddReservationView
    {
        private string currentUserId;
        private VirtualCollege.Utils.Settings.ItemType itemType;
        private string itemId = "0";
        private bool isInputValid = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            // connect presenter
            IAddReservationPresenter presenter = new AddReservationPresenter(this, new ReservationModel());

            // get item id
            if (Request.QueryString["itemId"] != null)
            {
                itemId = Request.QueryString["itemId"].ToString();
            }
            // get item type
            if (Request.QueryString["itemType"] != null)
            {
                string itemTypeValue = Request.QueryString["itemType"].ToString();
                switch (itemTypeValue.ToLower())
                {
                    case "book":
                        this.itemType = VirtualCollege.Utils.Settings.ItemType.Book;
                        VirtualCollege.Models.EntityFramework.Book book = presenter.GetBook(itemId);
                        if (book == null)
                        {
                            string message = itemTypeValue + " " + Settings.Invalid_Item;
                            Response.Redirect(Link.GetErrorPage(message, ""));
                        }
                        else
                        {
                            lblItem.Text = book.BookTitle + " written by " + book.Author;
                        }

                        break;
                    case "room": this.itemType = VirtualCollege.Utils.Settings.ItemType.Room;
                        VirtualCollege.Models.EntityFramework.Room room = presenter.getRoom(itemId);
                        if (room == null)
                        {
                            string message = itemTypeValue + " " + Settings.Invalid_Item;
                            Response.Redirect(Link.GetErrorPage(message, ""));
                        }
                        else
                        {
                            lblItem.Text = "Room No." + room.RoomId;
                        }

                        break;
                    case "pc": this.itemType = VirtualCollege.Utils.Settings.ItemType.Pc;
                        VirtualCollege.Models.EntityFramework.PC pc = presenter.getPc(itemId);
                        if (pc == null)
                        {
                            string message = itemTypeValue + " " + Settings.Invalid_Item;
                            Response.Redirect(Link.GetErrorPage(message, ""));
                        }
                        else
                        {
                            lblItem.Text = "Pc No." + pc.PCId;
                        }

                        break;
                    case "disc": this.itemType = VirtualCollege.Utils.Settings.ItemType.Disc;
                        VirtualCollege.Models.EntityFramework.Disc disc = presenter.getDisc(itemId);
                        if (disc == null)
                        {
                            string message = itemTypeValue + " " + Settings.Invalid_Item;
                            Response.Redirect(Link.GetErrorPage(message, ""));
                        }
                        else
                        {
                            lblItem.Text = disc.DiscTitle + " by " + disc.Artist;
                        }

                        break;
                    case "ebook": this.itemType = VirtualCollege.Utils.Settings.ItemType.Ebook;
                        VirtualCollege.Models.EntityFramework.Ebook ebook = presenter.GetEbook(itemId);
                        if (ebook == null)
                        {
                            string message = itemTypeValue + " " + Settings.Invalid_Item;
                            Response.Redirect(Link.GetErrorPage(message, ""));
                        }
                        else
                        {
                            lblItem.Text = ebook.EbookTitle + " published by " + ebook.Publisher;
                        }
                        break;
                    default:
                        string message1 = itemTypeValue + " " + Settings.Invalid_Item;
                        Response.Redirect(Link.GetErrorPage(message1, ""));
                        break;
                }
            }

            // get user id from session
            if (Session["Userid"] != null)
            {
                currentUserId = Session["Userid"].ToString();
            }
            // prompt to login
            else
            {
                Response.Write("<script>alert('Please login first');window.location.href='../Login.aspx?forward=" + Link.GetAddReservation() + "&itemType=" + itemType + "&itemId=" + itemId + "'</script>");
            }


        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            if (isInputValid)
            {
                placeHoldHandler(sender, e);
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

        public string UserId
        {
            get { return this.currentUserId; }
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

        protected void valCompareValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime tomorrow = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day + 1);
            if (calExpireDate.SelectedDate != default(DateTime))
            {
                if (calExpireDate.SelectedDate.CompareTo(tomorrow) < 0)
                {
                    isInputValid = false;
                    args.IsValid = false;
                }
                else
                {
                    isInputValid = true;
                    args.IsValid = true;
                }
            }
            //else
            //{
            //    args.IsValid = true;                
            //}
        }
    }
}