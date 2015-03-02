using System;
namespace VirtualCollege.Models
{
    public interface IPcModel
    {
        void AddPc(VirtualCollege.Models.Entity.Pc pc);
        void DeletePc(VirtualCollege.Models.Entity.Pc pc);
        System.Collections.Generic.List<VirtualCollege.Models.Entity.Pc> GetAllPcs();
        VirtualCollege.Models.Entity.Pc GetPcById(string pcId);
        void UpdatePc(VirtualCollege.Models.Entity.Pc pc);
    }
}
