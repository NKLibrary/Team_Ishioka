using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using VirtualCollege.Models;

namespace VirtualCollege.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            // ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
            int mem = 0, lib = 0, manager = 0;
            string username = UserName.Text.ToString();
            string password = Password.Text.ToString();
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select COUNT(*) from Member where UserId='" + username + "' and password='" + password + "'", con);
            mem = int.Parse(cmd.ExecuteScalar().ToString());
            SqlCommand cmd1 = new SqlCommand("select COUNT(*) from Librarian where LibrarianId='" + username + "' and Password='" + password + "'", con);
            lib = int.Parse(cmd1.ExecuteScalar().ToString());
            SqlCommand cmd2 = new SqlCommand("select COUNT(*) from Manager where ManagerId='" + username + "' and Password='" + password + "'", con);
            manager = int.Parse(cmd2.ExecuteScalar().ToString());


            if (mem > 0)
            {
                Session["Userid"] = username;
                Response.Redirect("Member_Home.aspx");
            }
            else if (lib > 0)
            {
                Session["Userid"] = username;
                Response.Redirect("~/Librarian_Home.aspx");
            }
            else if (manager > 0)
            {
                Session["Userid"] = username;
                Response.Redirect("~/Manager_Home.aspx");
            }
            else
            {

                FailureText.Text = "Invalid username or password.";
                ErrorMessage.Visible = true;
                //SqlCommand cmd = new SqlCommand("select COUNT(*) from Member where UserId='" + username + "' and password='" + password + "'", con);
                //con.Open();
                ////if (con.State == System.Data.ConnectionState.Closed)
                ////{

                ////}
                // SqlCommand cmd = new SqlCommand("select COUNT(*) from Librarian where LibrarianId='" + username + "' and Password='" + password + "'", con);
                //con.Open(); 
                //SqlCommand cmd = new SqlCommand("select COUNT(*) from Manager where ManagerId='" + username + "' and Password='" + password + "'", con);
                //con.Open();

                //if (int.Parse(cmd.ExecuteScalar().ToString()) > 0)
                //{


                //    Session["Userid"] = username;
                //    Response.Redirect("~/Home.aspx?login=true");
                //}
                //else if()
                //{}
                {

                }
            }
        }
    }
}
