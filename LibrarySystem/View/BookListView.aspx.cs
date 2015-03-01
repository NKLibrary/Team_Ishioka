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
    public partial class BookListView : System.Web.UI.Page, IBookListView, IEbookListView
    {
        string bookType;
        protected void Page_Load(object sender, EventArgs e)
        {
            bookType = Request.QueryString["bookType"];
            if (BookType.IsBook(bookType))
            {
                lblBookType.Text = "Book";
                this.presenter = new BookListPresenter(this, new BookModel());
                this.presenter.LoadBookList();
            }
            else
            {
                lblBookType.Text = "Ebook";
                this.ePresenter = new EbookListPresenter(this, new EbookModel());
                LoadAllEbooks();
            }
        }

        private void LoadAllEbooks()
        {
            Books = ePresenter.LoadAllEbooks();
        }

        public object Books
        {
            get { return (List<Book>)this.grdBook.DataSource; }
            set
            {
                if (BookType.IsBook(bookType))
                {
                    grdBook.DataSource = value;
                    grdBook.DataBind();
                    grdBook.DataKeyNames = new string[] { "BookId" };
                }
                else
                {
                    if (value is List<Ebook>)
                    {
                        var books = value as List<Ebook>;
                        grdBook.DataSource = from book in books
                                             select new { book.BookId, book.BookTitle, book.Author, book.AvailableCopies, book.PublishedYear, book.TotalPages };
                        grdBook.DataBind();
                        grdBook.DataKeyNames = new string[] { "BookId" };
                    }
                }
            }
        }

        private BookListPresenter presenter;
        public BookListPresenter Presenter
        {
            get { return this.presenter; }
            set { this.presenter = value; }
        }

        protected void grdBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //object o = this.grdBook.DataKeys[e.RowIndex].Value;
            //Response.Write(o);
            //object o2 = this.grdBook.Rows[e.RowIndex].Cells[2].Text.ToString();
            //Response.Write("   " + o2);
            if (BookType.IsBook(bookType))
            {
                string bookId = this.grdBook.DataKeys[e.RowIndex].Value.ToString();
                Book book = new Book { BookId = bookId };
                presenter.DeleteBook(book);
                this.presenter.LoadBookList();
            }
            else
            {
                string bookId = this.grdBook.DataKeys[e.RowIndex].Value.ToString();
                Ebook book = new Ebook { BookId = bookId };
                this.ePresenter.DeleteEbook(book);
                LoadAllEbooks();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (BookType.IsBook(bookType))
            {
                Response.Redirect(Link.ToAddBook());
            }
            else
            {
                Response.Redirect(Link.GetAddEbook());
            }
        }

        protected void grdBook_RowEditing(object sender, GridViewEditEventArgs e)
        {
            if (BookType.IsBook(bookType))
            {
                string bookId = this.grdBook.DataKeys[e.NewEditIndex].Value.ToString();
                Response.Redirect(Link.ToEditBook(bookId));
            }
            else
            {
                string bookId = this.grdBook.DataKeys[e.NewEditIndex].Value.ToString();
                Response.Redirect(Link.GetEditEbook(bookId));
            }
        }

        EbookListPresenter ePresenter;
        EbookListPresenter IEbookListView.Presenter
        {
            get
            {
                return this.ePresenter;
            }
            set
            {
                this.ePresenter = value;
            }
        }

    }
}