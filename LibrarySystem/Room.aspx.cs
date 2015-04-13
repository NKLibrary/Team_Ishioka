using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace VirtualCollege
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        string rid = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string roomid = GridView1.DataKeys[GridView1.SelectedRow.RowIndex].Value.ToString();
            Response.Redirect("View/AddReservationViewM.aspx?itemtype=Room&itemid=" + roomid);
        }
    }
}