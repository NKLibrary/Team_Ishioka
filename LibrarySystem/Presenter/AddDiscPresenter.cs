using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class AddDiscPresenter
    {
        private IAddDiscView view;
        private DiscModel model;
        public AddDiscPresenter(IAddDiscView view, DiscModel model)
        {
            this.view = view;
            this.model = model;
            view.addDiscListener += AddDiscHandler;
        }

        private void AddDiscHandler(object sender, EventArgs e)
        {
            AddDisc();
        }

        public void AddDisc()
        {
            Disc disc = new Disc();
            disc.DiscTitle = view.DiscTitle;
            disc.Artist = view.Artist;
            disc.Director = view.Director;
            disc.Distributor = view.Distributor;
            disc.ReleaseDate = Convert.ToDateTime(view.ReleaseDate);
            disc.Language = view.Language;
            disc.Subtitle = view.Subtitle;
            disc.Category = view.Category;
            disc.Description = view.Description;
            disc.Duration = view.Duration;
            disc.ThumbPicture = view.ThumbPicture;
            disc.Status = view.Status;
            model.AddDisc(disc);
        }
    }
}