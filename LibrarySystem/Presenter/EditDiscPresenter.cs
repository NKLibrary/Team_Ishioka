using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class EditDiscPresenter
    {
        private IEditDiscView view;
        private DiscModel model;

        public EditDiscPresenter(IEditDiscView view, DiscModel model)
        {
            this.view = view;
            this.model = model;
            this.view.fillViewListener += FillViewHandler;
            this.view.updateListener += UpdateHandler;
        }

        private void UpdateHandler(object sender, EventArgs e)
        {
            Disc disc = new Disc();
            disc.DiscId = view.DiscId;
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
            model.UpdateDisc(disc);
        }

        private void FillViewHandler(object sender, EventArgs e)
        {
            Disc disc = model.GetDiscById(view.DiscId);
            view.DiscId = disc.DiscId;
            view.DiscTitle = disc.DiscTitle;
            view.Artist= disc.Artist;
            view.Director = disc.Director;
            view.Distributor = disc.Distributor;
            view.ReleaseDate = disc.ReleaseDate.ToShortDateString();
            view.Language = disc.Language;
            view.Subtitle = disc.Subtitle;
            view.Category = disc.Category;
            view.Description = disc.Description;
            view.Duration = disc.Duration;
            view.ThumbPicture = disc.ThumbPicture;
            view.Status = disc.Status;
        }
    }
}