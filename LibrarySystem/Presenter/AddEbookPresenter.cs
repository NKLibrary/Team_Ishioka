using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class AddEbookPresenter
    {
        private IAddEbookView view;
        private EbookModel model;

        public AddEbookPresenter(IAddEbookView view, EbookModel model)
        {
            this.view = view;
            this.model = model;
            view.Presenter = this;
        }

        public void AddEbook(VirtualCollege.Models.Entity.Ebook book)
        {
            model.AddEbook(book);
        }
    }
}