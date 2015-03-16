using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["login"]!=null &&  bool.Parse(Request.QueryString["login"].ToString()) == true)
            {
                lblLogin.Visible = true;
            }
        }
    }
}