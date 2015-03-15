using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class BookListPresenter
    {
        private IBookListView view;
        private IBookModel model;

        public BookListPresenter(IBookListView view, IBookModel model)
        {
            this.view = view;
            this.model = model;
            this.view.Presenter = this;
        }

        public void LoadBookList()
        {
            var books = from book in model.GetAllBooks()
                        select new {book.BookId, book.BookTitle, book.Author, book.PublishedYear, book.AvailableCopies };
            view.Books = books;
        }

        public void DeleteBook(VirtualCollege.Models.Entity.Book book)
        {
            model.DeleteBook(book);
        }

     }
}