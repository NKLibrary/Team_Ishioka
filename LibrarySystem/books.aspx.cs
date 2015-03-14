using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege
{
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ebookid = GridView1.DataKeys[GridView1.SelectedRow.RowIndex].Value.ToString();
            Response.Redirect("~/bookdetails.aspx?id=" + ebookid);
        }
    }
}