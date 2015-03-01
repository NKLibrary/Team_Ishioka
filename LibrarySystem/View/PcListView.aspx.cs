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
    public partial class PcListView : System.Web.UI.Page, IPcListView
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            new PcListPresenter(this, new PcModel());
            fillView(sender, e);
        }

        public object Pcs
        {
            set
            {
                gvPc.DataSource = value;
                gvPc.DataBind();
                gvPc.DataKeyNames = new string[] { "pcid" };
            }
        }

        private string selectedPcId = "-1";
        public string SelectedPcId
        {
            get { return selectedPcId; }
        }

        public event EventHandler fillView;

        public event EventHandler deletePc;

        protected void gvPc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            this.selectedPcId = gvPc.DataKeys[e.RowIndex].Value.ToString();
            deletePc(sender, e);
            fillView(sender, e);
        }

        protected void gvPc_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.selectedPcId = gvPc.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect(Link.GetEditPc(selectedPcId));
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect(Link.GetAddPc());

        }
    }
}