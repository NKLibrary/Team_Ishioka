using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.View
{
    public partial class PlaceReservationSample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReserve1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddReservationViewM.aspx?itemType=book&itemId=12");
        }

        protected void btnReserve2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddReservationViewM.aspx?itemType=disc&itemId=84");
        }

        protected void btnReserve3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddReservationViewM.aspx?itemType=room&itemId=23");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            new ReservationModel().Test();
        }


    }
}