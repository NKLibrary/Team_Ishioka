using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using VirtualCollege.Models;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

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

          string username = UserName.Text.ToString();
            string password = Password.Text.ToString();
            string connection = ConfigurationManager.ConnectionStrings["HConnection"].ConnectionString;
            DataSet ds = new DataSet();
            SqlCommand cmd;
            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection con = new SqlConnection(connection);
            string q1 = "select * from Member where UserId ="+username+" and Password = '"+password+"'";
            cmd = new SqlCommand(q1,con);
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["UserID"] = username;
                Response.Redirect("MemberWelcome.aspx");
              
            }


            /* if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                ApplicationUser user = manager.Find(UserName.Text, Password.Text);
                if (user != null)
                {
                    IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response); */
                    
                    if (username.Equals("user") && password.Equals("user")) 
                    {
                        Response.Redirect("MemberWelcome.aspx");
                    }
                    else if (username.Equals("lib") && password.Equals("lib"))
                    {
                        Response.Redirect("Librarian.aspx");
                    }
                    else if (username.Equals("manager") && password.Equals("manager"))
                    {
                        Response.Redirect("~/Manager.aspx");
                    }
                
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        }
    }
