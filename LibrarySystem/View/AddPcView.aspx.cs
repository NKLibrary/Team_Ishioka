using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualCollege.Models;
using VirtualCollege.Presenter;
using VirtualCollege.Utils;

namespace VirtualCollege.View
{
    public partial class AddPcView : System.Web.UI.Page, IAddPcView
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            new AddPcPresenter(this, new PcModel());
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            addPc(sender, e);
            Response.Redirect(Link.GetPcList());
        }

        public string Status
        {
            get
            {
                if (rbtnAvailable.Checked)
                {
                    return "Available";
                }
                else
                    return "NA";
            }
        }

        public event EventHandler addPc;
    }
}