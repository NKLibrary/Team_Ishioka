using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class AddBookPresenter
    {
        private IAddBook view;
        private IBookModel model;

        public AddBookPresenter(IAddBook view, IBookModel model)
        {
            this.view = view;
            this.model = model;
            this.view.Presenter = this;
        }
        public void AddBook(Book book)
        {
            model.AddBook(book);
        }

    }
}