using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege
{
    public partial class pc1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void reserve_pc(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "reserve")
            {
                //Response.Write("<script type=\"text/javascript\">alert('Your Message');</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string pcid = GridView1.DataKeys[GridView1.SelectedRow.RowIndex].Value.ToString();
            Response.Redirect("~/pcdetails.aspx?id=" + pcid);
        }
    }
}