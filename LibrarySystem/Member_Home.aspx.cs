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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Userid"] != null)
            {
                string name = Session["Userid"].ToString();
                lblwelcome.Text = "Welcome " + fetchname(name) + ", \n what would you like to do today!!";
            }

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