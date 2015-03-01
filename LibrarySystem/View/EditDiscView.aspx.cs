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
    public partial class EditDiscView : System.Web.UI.Page, IEditDiscView
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EditDiscPresenter presenter = new EditDiscPresenter(this, new DiscModel());
            if (!IsPostBack)
            {
                LoadView();
                fillViewListener(sender, e);
            }
        }

        private void LoadView()
        {
            DiscId = Request.QueryString["DiscId"];
            ddlCategory.DataSource = from cat in CategoryModel.GetAllBookCategories()
                                     select cat.catName;
            ddlCategory.DataBind();
        }

        public string DiscId
        {
            get
            {
                return txtId.Value;
            }
            set
            {
                txtId.Value = value;
            }
        }

        public string DiscTitle
        {
            get
            {
                return txtTitle.Text;
            }
            set
            {
                txtTitle.Text = value;
            }
        }

        public string Artist
        {
            get
            {
                return txtArtist.Text;
            }
            set
            {
                txtArtist.Text = value;
            }
        }

        public string Director
        {
            get
            {
                return txtDirector.Text;
            }
            set
            {
                txtDirector.Text = value;
            }
        }

        public string Distributor
        {
            get
            {
                return txtDistribuor.Text;
            }
            set
            {
                txtDistribuor.Text = value;
            }
        }

        public string ReleaseDate
        {
            get
            {
                return calRelease.SelectedDate.ToShortDateString();
            }
            set
            {
                calRelease.SelectedDate = Convert.ToDateTime(value);
            }
        }

        public string Language
        {
            get
            {
                return txtLanguage.Text;
            }
            set
            {
                txtLanguage.Text = value;
            }
        }

        public string Subtitle
        {
            get
            {
                return txtSubtitle.Text;
            }
            set
            {
                txtSubtitle.Text = value;
            }
        }

        public string Category
        {
            get
            {
                return ddlCategory.SelectedItem.Text;
            }
            set
            {
                for (int i = 0; i < ddlCategory.Items.Count; i++)
                {
                    if (ddlCategory.Items[i].Value == value)
                    {
                        ddlCategory.Items[i].Selected = true;
                    }
                }
            }
        }

        public string Description
        {
            get
            {
                return txtDescription.Text;
            }
            set
            {
                txtDescription.Text = value;
            }
        }

        public string Duration
        {
            get
            {
                return txtDuration.Text;
            }
            set
            {
                txtDuration.Text = value;
            }
        }

        public string ThumbPicture
        {
            get
            {
                return fuPicture.PostedFile.FileName;
            }
            set
            {
                // display picture

            }
        }

        public string Status
        {
            get
            {
                if (rbtnAvailable.Checked) return "Available";
                else return "NA";
            }
            set
            {
                if (value == "Available")
                    rbtnAvailable.Checked = true;
                else
                    rbtnNa.Checked = true;
            }
        }

        public event EventHandler updateListener;

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            updateListener(sender, e);
            //Response.Redirect(Link.ToDiscList());
            Response.Write("<script>alert('edit successfully!');window.location.href='" + Link.ToDiscList() + "';</script>");
        }


        public event EventHandler fillViewListener;
    }
}