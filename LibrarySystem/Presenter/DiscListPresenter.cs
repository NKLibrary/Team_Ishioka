using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class DiscListPresenter
    {
        private IDiscList view;
        private DiscModel model;

        public DiscListPresenter(IDiscList view, DiscModel model)
        {
            this.view = view;
            this.model = model;
            view.Presenter = this;
        }

        public void Delete(string discId)
        {
            Disc disc  = new Disc();
            disc.DiscId = discId;
            model.DeleteDisc(disc);
        }

        public IList GetAllDiscs()
        {
            IList list = new ArrayList();
            var result = from disc in model.GetAllDiscs()
                         select new { disc.DiscId, disc.DiscTitle, disc.Artist, disc.Duration, disc.ReleaseDate };
            foreach (var r in result)
            {
                list.Add(r);
            }
            return list;
        }
    }
}