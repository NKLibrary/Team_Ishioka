using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualCollege.Utils;

namespace VirtualCollege.View
{
    public partial class AddReservationView : System.Web.UI.Page, IAddReservationView
    {
        private string userId;
        private ItemType itemType;
        private string itemId;

        protected void Page_Load(object sender, EventArgs e)
        {
            // get user id from session
            userId = "3001477";

            // get item type
            string itemTypeValue = Request.QueryString["itemType"].ToString();
            switch (itemTypeValue.ToLower())
            {
                case "room": this.itemType = VirtualCollege.Utils.Settings.ItemType.Room;
                    break;
                case "pc": this.itemType = VirtualCollege.Utils.Settings.ItemType.Pc;
                    break;
                case "disc": this.itemType = VirtualCollege.Utils.Settings.ItemType.Disc;
                    break;
                case "book":
                    this.itemType = VirtualCollege.Utils.Settings.ItemType.Book;
                    break;
                default:
                    
            }

            // get item id
            userId = Request
        }

        public string UserId
        {
            get { throw new NotImplementedException(); }
        }

        public string ItemType
        {
            get { throw new NotImplementedException(); }
        }

        public string ItemId
        {
            get { throw new NotImplementedException(); }
        }

        public DateTime ExpireDate
        {
            get { throw new NotImplementedException(); }
        }
    }
}