using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.Presenter;
using VirtualCollege.Utils;

namespace VirtualCollege.View
{
    public partial class AddDiscView : System.Web.UI.Page, IAddDiscView
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AddDiscPresenter presenter = new AddDiscPresenter(this, new DiscModel());
            FillView();
        }

        private void FillView()
        {
            ddlCategory.DataSource = from Category cat in CategoryModel.GetAllBookCategories()
                                     select cat.catName;
            ddlCategory.DataBind();
        }

        public string DiscTitle
        {
            get { return txtTitle.Text; }
        }

        public string Artist
        {
            get { return txtArtist.Text; }
        }

        public string Director
        {
            get { return txtDirector.Text; }
        }

        public string Distributor
        {
            get { return txtDistributor.Text; }
        }

        public string ReleaseDate
        {
            get
            {
                return calRelease.SelectedDate.ToShortDateString();
            }
        }

        public string Language
        {
            get { return txtLanguage.Text; }
        }

        public string Subtitle
        {
            get { return txtSubsitle.Text; }
        }


        public string Description
        {
            get { return txtDescription.Text; }
        }

        public string Duration
        {
            get { return txtDuration.Text; }
        }

        public string ThumbPicture
        {
            get { return fuPicture.PostedFile.FileName; }
        }

        public string Status
        {
            get
            {
                if (rbtnAvailable.Checked) return rbtnAvailable.Text;
                else return rbtnNa.Text;
            }
        }

        public event EventHandler addDiscListener;


        string IAddDiscView.Category
        {
            get
            {
                return ddlCategory.SelectedItem.Value;
            }
        }

        protected void btnDisc_Click(object sender, EventArgs e)
        {
            addDiscListener(sender, e);
            Response.Redirect(Link.ToDiscList());
        }
    }

}