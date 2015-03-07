using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege.Utils
{
    public partial class ErrorPage : System.Web.UI.Page
    {
        string errorMessage; string returnTo;
        protected void Page_Load(object sender, EventArgs e)
        {
            errorMessage = Request.QueryString["errorMessage"].ToString();
            returnTo = Request.QueryString["returnTo"].ToString();
            lblErrorMessage.Text = errorMessage;
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            
        }


    }
}