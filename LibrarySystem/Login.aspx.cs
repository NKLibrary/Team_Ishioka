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
            /* if (IsValid)
             {
                 // Validate the user password
                 var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                 ApplicationUser user = manager.Find(UserName.Text, Password.Text);
                 if (user != null)
                 {
                     IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                     IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response); */

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());

            string username = UserName.Text.ToString();
            string password = Password.Text.ToString();


            if (username.Equals("user") && password.Equals("user"))
            {
                Response.Redirect("Member_Home.aspx");
            }
            else if (username.Equals("300001") && password.Equals("lib"))
            {
                Response.Redirect("~/Librarian_Home.aspx");
            }
            else if (username.Equals("manager") && password.Equals("manager"))
            {
                Response.Redirect("~/Manager_Home.aspx");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("select COUNT(*) from Member where UserId='" + username + "' and password='" + password + "'", con);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                if (int.Parse(cmd.ExecuteScalar().ToString()) > 0)
                {

                    
                    Session["Userid"] = username;
                    Response.Redirect("~/Home.aspx?login=true");
                }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        }
    }
}
