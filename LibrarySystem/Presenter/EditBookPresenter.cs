using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class EditBookPresenter
    {
        private IEditBookView view;
        private IBookModel model;

        public EditBookPresenter(IEditBookView view, IBookModel model)
        {
            this.view = view;
            this.model = model;
            this.view.Presenter = this;
        }

        public void UpdateBook(Book book)
        {
            model.EditBook(book);
        }

        public Book GetBook(string bookId)
        {
            return model.GetBook(bookId);
        }
    }
}