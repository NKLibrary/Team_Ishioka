using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class EbookListPresenter
    {
        private IEbookListView view;
        private IEbookModel model;

        public EbookListPresenter(IEbookListView view, IEbookModel model)
        {
            this.view = view;
            this.model = model;
            view.Presenter = this;
        }

        public List<Ebook> LoadAllEbooks()
        {
            return model.GetAllEbooks();
        }

        public void DeleteEbook(Ebook book)
        {
            model.DeleteEbook(book);
        }
    }
}