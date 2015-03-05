using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class PcListPresenter
    {
        private IPcListView view;
        private IPcModel model;

        public PcListPresenter(IPcListView view, IPcModel model)
        {
            this.view = view;
            this.model = model;
            view.fillView += fillViewHandler;
            view.deletePc += deletePcHandler;
        }

        private void deletePcHandler(object sender, EventArgs e)
        {
            string deletePcId = view.SelectedPcId;
            VirtualCollege.Models.Entity.Pc pc = new VirtualCollege.Models.Entity.Pc();
            pc.pcId = deletePcId;
            model.DeletePc(pc);

        }

        private void fillViewHandler(object sender, EventArgs e)
        {
            var pcs = from pc in model.GetAllPcs()
                      select new { pc.pcId, pc.status };
            view.Pcs = pcs;
        }
    }
}