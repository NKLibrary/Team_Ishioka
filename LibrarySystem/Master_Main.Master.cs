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
         string gobalstring = "";  

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Userid"]!=null) 
            {
                string userid = Session["Userid"].ToString();
                
                lbluid.Visible = true;
                btnlogin.Visible = false;
                btnlogout.Visible = true;
                btnreg.Visible = false;
                Button1.Visible = true;
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
            Button1.Visible = false;
            Response.Redirect("~/Default.aspx");
            
        }

        protected string fetchname(string uid)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
            string name = "";
            string f1 = uid.Substring(0, 1);
            int ii = Convert.ToInt32(f1);
            if (ii == 3) 
            {
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
               
            }
            else if (ii == 4) 
            {
                string q2 = "select FirstName from Librarian where LibrarianId = " + Convert.ToInt32(uid);
                SqlDataAdapter ad = new SqlDataAdapter();
                DataSet ds = new DataSet();
                try
                {
                    conn.Open();

                    ad.SelectCommand = new SqlCommand(q2, conn);
                    ad.Fill(ds);
                    conn.Close();
                    name = ds.Tables[0].Rows[0].ItemArray[0].ToString();
                }
                catch (SqlException ex) { }
                   
            }
            else if (ii == 7) 
            {
                string q3 = "select FirstName from Manager where ManagerId = " + Convert.ToInt32(uid);
                SqlDataAdapter ad = new SqlDataAdapter();
                DataSet ds = new DataSet();
                try
                {
                    conn.Open();

                    ad.SelectCommand = new SqlCommand(q3, conn);
                    ad.Fill(ds);
                    conn.Close();
                    name = ds.Tables[0].Rows[0].ItemArray[0].ToString();
                }
                catch (SqlException ex) { }
                
            }
           
            //string q1 = "select FirstName from Member where UserId = " + Convert.ToInt32(uid);
            //string q2 = "select FirstName from Librarian where LibrarianId = " + Convert.ToInt32(uid);
            //string q3 = "select FirstName from Manager where ManagerId = " + Convert.ToInt32(uid);
            //SqlDataAdapter ad = new SqlDataAdapter();
            //DataSet ds = new DataSet();
            //try
            //{
            //    conn.Open();
               
            //    ad.SelectCommand = new SqlCommand(q1, conn);
            //    ad.Fill(ds);
            //    conn.Close();
            //    name = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            //}
            //catch (SqlException ex) { }
            gobalstring = name;
            return name;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cetainstring = gobalstring.Substring(0, 1);
            string cetainstring1 = gobalstring.Substring(0, 1);
            if (cetainstring == "3")
            {
                Response.Redirect("../Member_Home.aspx");
            }
            if (cetainstring1 == "4")
            {
                Response.Redirect("../Librarian_Home");
            }
            if (cetainstring == "7")
            {
                Response.Redirect("../Manager_Home");
            }
        }
        
    }
}