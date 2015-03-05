using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models;
using VirtualCollege.Models.Entity;
using VirtualCollege.View;

namespace VirtualCollege.Presenter
{
    public class AddPcPresenter
    {
        private IAddPcView view;
        private IPcModel model;

        public AddPcPresenter(IAddPcView view, IPcModel model)
        {
            this.view = view;
            this.model = model;
            this.view.addPc += AddPcHandler;
        }

        private void AddPcHandler(object sender, EventArgs e)
        {
            VirtualCollege.Models.Entity.Pc pc = new VirtualCollege.Models.Entity.Pc();
            pc.status = view.Status;
            model.AddPc(pc);
        }
    }
}