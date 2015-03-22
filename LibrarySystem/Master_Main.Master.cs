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
    public partial class Master_Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Userid"]!=null)
            {
                string userid = Session["Userid"].ToString();
                
                lbluid.Visible = true;
                btnlogin.Visible = false;
                btnlogout.Visible = true;
                btnreg.Visible = false;
                string name = fetchname(userid);
                lbluid.Text = "Welcome " + name + " !!";

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

        protected string fetchname(string uid)
        {
            string name = "";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
            string q1 = "select FirstName from Member where UserId = " + Convert.ToInt32(uid);
            SqlDataAdapter ad = new SqlDataAdapter();
            DataSet ds = new DataSet();
            try
            {
                conn.Open();
                ad.SelectCommand = new SqlCommand(q1, conn);
                ad.Fill(ds);
                conn.Close();
                name = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (SqlException ex) { }
            return name;
        }
    }
}