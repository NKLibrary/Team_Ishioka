using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualCollege.Presenter;
using VirtualCollege.Utils;

namespace VirtualCollege.View
{
    public partial class DiscListView : System.Web.UI.Page, IDiscList
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DiscListPresenter presenter = new DiscListPresenter(this, new Models.Entity.DiscModel());
            LoadDiscList();
        }

        private void LoadDiscList()
        {
            Disc = presenter.GetAllDiscs();
        }

        public object Disc
        {
            set
            {
                gvDisc.DataSource = value;
                gvDisc.DataBind();
                gvDisc.DataKeyNames = new string[] { "discId" };
            }
        }

        public string SelectedDiscId
        {
            get { throw new NotImplementedException(); }
        }

        private DiscListPresenter presenter;
        public Presenter.DiscListPresenter Presenter
        {
            get
            {
                return presenter;
            }
            set
            {
                this.presenter = value;
            }
        }

        protected void gvDisc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string discId = this.gvDisc.DataKeys[e.RowIndex].Value.ToString();
            presenter.Delete(discId);
            LoadDiscList();
        }

        protected void gvDisc_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string discId = this.gvDisc.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect(Link.ToEditDisc(discId));
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect(Link.ToAddDisc());
        }
    }
}