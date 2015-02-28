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
    public partial class AddBook : System.Web.UI.Page, IAddBook
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IBookModel model = new BookModel();
            AddBookPresenter presenter = new AddBookPresenter(this, model);
            FillControls();
        }

        private void FillControls()
        {
            ddlCategory.Items.Add("Novel");
            ddlCategory.Items.Add("Dictionary");
            ddlCategory.Items.Add("IT");
            ddlCategory.Items.Add("Engineer");
        }

        public string BookTitle
        {
            get
            {
                return txtTitle.Text;
            }
            set
            {
                throw new NotImplementedException();
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
                throw new NotImplementedException();
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
                throw new NotImplementedException();
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
                throw new NotImplementedException();
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
                throw new NotImplementedException();
            }
        }

        public string TotalPages
        {
            get
            {
                return txtPages.Text;
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public string ISBN
        {
            get
            {
                return txtIsbn.Text;
            }
            set
            {
                throw new NotImplementedException();
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
                throw new NotImplementedException();
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
                throw new NotImplementedException();
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
                throw new NotImplementedException();
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
                throw new NotImplementedException();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Book book = new Book();
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
            this.presenter.AddBook(book);
            Response.Redirect(Link.ToBookList());
        }

        private AddBookPresenter presenter;
        public Presenter.AddBookPresenter Presenter
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
    }
}