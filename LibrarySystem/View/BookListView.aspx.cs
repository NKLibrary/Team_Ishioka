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
    public partial class BookListView : System.Web.UI.Page, IBookListView
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            this.presenter = new BookListPresenter(this, new BookModel());
            this.presenter.LoadBookList();
        }

        public object Books
        {
            get { return (List<Book>)this.grdBook.DataSource; }
            set
            {
                grdBook.DataSource = value;
                grdBook.DataBind();
                grdBook.DataKeyNames = new string[]{"BookId"};
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

            string bookId = this.grdBook.DataKeys[e.RowIndex].Value.ToString();
            Book book = new Book { BookId = bookId };
            presenter.DeleteBook(book);
            this.presenter.LoadBookList();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect(Link.ToAddBook());
        }

        protected void grdBook_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string bookId = this.grdBook.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect(Link.ToEditBook(bookId));
        }
    }
}