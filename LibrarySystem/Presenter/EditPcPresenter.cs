using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class EditPcPresenter
    {
        private IEditPcView view;
        private IPcModel model;
        public EditPcPresenter(IEditPcView view, IPcModel model)
        {
            this.view = view;
            this.model = model;
            this.view.FillViewHandler += FillView;
            this.view.EditPcHandler += EditPc;
        }

        private void EditPc(object sender, EventArgs e)
        {
            VirtualCollege.Models.Entity.Pc pc = new VirtualCollege.Models.Entity.Pc();
            pc.pcId = this.view.PcId;
            pc.status = this.view.Status;
            model.UpdatePc(pc);
            
        }

        private void FillView(object sender, EventArgs e)
        {
            VirtualCollege.Models.Entity.Pc pc = model.GetPcById(this.view.PcId);
            this.view.PcId = pc.pcId;
            this.view.Status = pc.status;
        }
    }
}