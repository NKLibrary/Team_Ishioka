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
    public partial class EditPcView : System.Web.UI.Page, IEditPcView
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            new EditPcPresenter(this, new PcModel());
            // get pcid
            PcId = Request.QueryString["pcId"];
            if (!IsPostBack)
            {
            FillViewHandler(sender, e);
            }
        }

        public string PcId
        {
            get
            {
                return hfPcId.Value;
            }
            set
            {
                hfPcId.Value = value;
            }
        }

        public string Status
        {
            get
            {
                if (rbtnAvailable.Checked)
                {
                    return rbtnAvailable.Text;
                }
                else
                {
                    return rbtnNa.Text;
                }
            }
            set
            {
                if (value == "Available")
                {
                    rbtnAvailable.Checked = true;
                }
                else
                {
                    rbtnNa.Checked = true;
                }

            }
        }

        public event EventHandler FillViewHandler;

        public event EventHandler EditPcHandler;

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            EditPcHandler(sender, e);
            Response.Redirect(Link.GetPcList());
        }
    }
}