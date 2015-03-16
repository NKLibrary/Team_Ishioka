using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege
{
    public partial class Master_Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Userid"]!=null)
            {
                string userid = Session["Userid"].ToString();
                lbluid.Text = "Welcome "+userid+" !!";
                lbluid.Visible = true;
                btnlogin.Visible = false;
                btnlogout.Visible = true;
                btnreg.Visible = false;

            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            lbluid.Visible = false;
            btnlogin.Visible = true;
            btnlogout.Visible = false;
            btnreg.Visible = true;
            Response.Redirect("Default.aspx");
            
        }
    }
}