using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using VirtualCollege.Models;

namespace VirtualCollege.Account
{
    public partial class Register : Page
    {
       /* protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                IdentityHelper.SignIn(manager, user, isPersistent: false);

                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        } */



        protected void Page_Load(object sender, EventArgs e) 
        {
            DateTimeLbl.Text = System.DateTime.Now.ToString();
        }

        protected void Clearbtn_Click(object sender, EventArgs e)
        {
            Nametb.Text = "";
            Addresstb .Text = "";
            Citytb.Text = "";
            Postaltb .Text = "";
            Hometb .Text = "";
            Celltb .Text = "";
            Emailtb .Text = "";
            SecEmailtb.Text = "";
            Schooltb .Text = "";
            
        }
        
    }
}