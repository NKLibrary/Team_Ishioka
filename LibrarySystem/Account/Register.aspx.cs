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
        protected void Page_Load(object sender, EventArgs e) 
        {
            DateTimeLbl.Text = System.DateTime.Now.ToString();
        }
        protected void Button2_Click(object sender, EventArgs e)
             {
                 Nametb.Text = "";
                 Addresstb.Text = "";
                 Citytb.Text = "";
                 Postaltb.Text = "";
                 Hometb.Text = "";
                 Celltb.Text = "";
                 Emailtb.Text = "";
                 SecEmailtb.Text = "";
                 Schooltb.Text = "";
             }

       
        
    }
}