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
    public partial class EditBookView : System.Web.UI.Page, IEditBookView, IEditEbookView
    {
        string bookType;
        protected void Page_Load(object sender, EventArgs e)
        {
            bookType = Request.QueryString["bookType"];
            if (BookType.IsBook(bookType))
            {
                EditBookPresenter presenter = new EditBookPresenter(this, new BookModel());

            }
            else
            {
                new EditEbookPresenter(this, new EbookModel());
            }
            if (!IsPostBack)
            {
                FillControls();
            }

        }

        private void FillControls()
        {
            // fil category
            ddlCategory.Items.Add("Novel");
            ddlCategory.Items.Add("Dictionary");
            ddlCategory.Items.Add("IT");
            ddlCategory.Items.Add("Engineer");
            // fill content
            if (BookType.IsBook(bookType))
            {
                Book book = presenter.GetBook(Request.QueryString["BookId"]);
                lblBookId.Text = book.BookId;
                BookTitle = book.BookTitle;
                Author = book.Author;
                Publisher = book.Publisher;
                Category = book.Category;
                PublishedYear = book.PublishedYear.ToShortDateString();
                TotalPages = book.TotalPages + "";
                ISBN = book.ISBN;
                Description = book.Description;
                ThumbnailPicture = book.ThumbnailPicture;
                AvailableCopies = book.AvailableCopies + "";
                Status = book.Status;
            }
            else
            {
                Ebook book = ePresenter.GetEbook(Request.QueryString["BookId"]);
                lblBookId.Text = book.BookId;
                BookTitle = book.BookTitle;
                Author = book.Author;
                Publisher = book.Publisher;
                Category = book.Category;
                PublishedYear = book.PublishedYear.ToShortDateString();
                TotalPages = book.TotalPages + "";
                ISBN = book.ISBN;
                Description = book.Description;
                ThumbnailPicture = book.ThumbnailPicture;
                AvailableCopies = book.AvailableCopies + "";
                Status = book.Status;

            }
        }

        public string BookTitle
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

        public string Author
        {
            get
            {
                return txtAuthor.Text;
            }
            set
            {
                txtAuthor.Text = value;
            }
        }

        public string Publisher
        {
            get
            {
                return txtPublisher.Text;
            }
            set
            {
                txtPublisher.Text = value;
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
                if (ddlCategory.Items.FindByValue(value) != null)
                {
                    ddlCategory.Items.FindByValue(value).Selected = true;
                }

            }
        }

        public string PublishedYear
        {
            get
            {
                return calPublish.SelectedDate.ToShortDateString();
            }
            set
            {
                calPublish.SelectedDate = Convert.ToDateTime(value);
            }
        }

        public string TotalPages
        {
            get
            {
                return txtPage.Text;
            }
            set
            {
                txtPage.Text = value;
            }
        }

        public string ISBN
        {
            get
            {
                return txtIsdn.Text;
            }
            set
            {
                txtIsdn.Text = value;
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

        public string ThumbnailPicture
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

        public string AvailableCopies
        {
            get
            {
                return txtCopies.Text;
            }
            set
            {
                txtCopies.Text = value;
            }
        }

        public string Status
        {
            get
            {
                if (this.rbtnAvailable.Checked)
                {
                    return rbtnAvailable.Text;
                }
                else
                {
                    return rbtNa.Text;
                }
            }
            set
            {
                if (value == rbtnAvailable.Text)
                {
                    rbtnAvailable.Checked = true;
                }
                else
                {
                    rbtNa.Checked = true;
                }
            }
        }

        private EditBookPresenter presenter;
        public Presenter.EditBookPresenter Presenter
        {
            get
            {
                return this.presenter;
            }
            set
            {
                this.presenter = value;
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (BookType.IsBook(bookType))
            {
                Book book = new Book();
                book.BookId = BookId;
                book.BookTitle = BookTitle;
                book.Author = Author;
                book.AvailableCopies = int.Parse(AvailableCopies);
                book.Category = Category;
                book.Description = Description;
                book.ISBN = ISBN;
                book.PublishedYear = Convert.ToDateTime(PublishedYear);
                book.Publisher = Publisher;
                book.Status = Status;
                book.ThumbnailPicture = ThumbnailPicture;
                book.TotalPages = int.Parse(TotalPages);
                this.presenter.UpdateBook(book);
                Response.Write("<script>alert('Edit successfully!')</script>");
                Response.Redirect(Link.ToBookList());
            }
            else
            {
                Ebook book = new Ebook();
                book.BookId = BookId;
                book.BookTitle = BookTitle;
                book.Author = Author;
                book.AvailableCopies = int.Parse(AvailableCopies);
                book.Category = Category;
                book.Description = Description;
                book.ISBN = ISBN;
                book.PublishedYear = Convert.ToDateTime(PublishedYear);
                book.Publisher = Publisher;
                book.Status = Status;
                book.ThumbnailPicture = ThumbnailPicture;
                book.TotalPages = int.Parse(TotalPages);
                this.ePresenter.EditEbook(book);
                Response.Write("<script>alert('Edit successfully!')</script>");
                Response.Redirect(Link.GetEbookList());

            }
        }


        public string BookId
        {
            get { return lblBookId.Text; }
        }

        public object Books
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        private EditEbookPresenter ePresenter;
        
        EditEbookPresenter IEditEbookView.Presenter
        {
            get
            {
                return ePresenter;
            }
            set
            {
                ePresenter = value;
            }
        }
    }
}