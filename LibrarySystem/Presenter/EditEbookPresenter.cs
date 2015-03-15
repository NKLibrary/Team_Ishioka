using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class EditEbookPresenter
    {
        private IEditEbookView view;
        private EbookModel model;
        public EditEbookPresenter(IEditEbookView view, EbookModel model)
        {
            this.view = view;
            this.model = model;
            view.Presenter = this;
        }

        public void EditEbook(VirtualCollege.Models.Entity.Ebook book)
        {
            model.EditEbook(book);
        }

        public VirtualCollege.Models.Entity.Ebook GetEbook(string bookId)
        {
            return model.GetEbookById(bookId);
        }
    }
}