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
    public partial class Dvd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "reserve")
            {
                if (Session["Userid"] != null)
                {
                    string uid = Session["Userid"].ToString();
                    int index = Convert.ToInt32(e.CommandArgument);
                    string dvdid = this.GridView1.DataKeys[index].Values["DiscId"].ToString();
                    updatestatus(dvdid);
                    recordreserve(uid, dvdid);
                    Response.Write("<script type=\"text/javascript\">alert('You have reserved the DVD');</script>");
                }
                else 
                {
                    Response.Write("<script type=\"text/javascript\">alert('You need to Sign in to Reserve the DVD');</script>");
                }


            }
            if (e.CommandName == "details") 
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string dvdid = this.GridView1.DataKeys[index].Values["DiscId"].ToString();
                Response.Redirect("~/dvddetails?id=" + dvdid);
            }
        }
     

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            string dvdid = GridView1.DataKeys[GridView1.SelectedRow.RowIndex].Value.ToString();
            Response.Redirect("~/dvddetails?id="+dvdid);

        }

        protected void updatestatus(string dvdid) 
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
            int updated = 0;
            string query = "update Disc set Status = 'reserved' where DiscId =" + dvdid;
            SqlCommand cmd = new SqlCommand(query, conn);
            try
            {
                conn.Open();
                updated = cmd.ExecuteNonQuery();
                conn.Close();
                GridView1.DataBind();
            }
            catch (Exception ee) { }
        }

        protected void recordreserve(string uid, string itemid) 
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
            string expdate = System.DateTime.Now.AddDays(2).ToString();
            string q1 = "insert into Reservation values ('DVD',"+Convert.ToInt32(itemid)+","+Convert.ToInt32(uid)+",'"+expdate+"','','','reserved')";
            SqlCommand cmd = new SqlCommand(q1, conn);
            int rows = 0;
            try
            {
                conn.Open();
               rows = cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException eee) { }

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

       
    }
}