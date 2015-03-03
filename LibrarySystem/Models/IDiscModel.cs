using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.Models
{
    public interface IDiscModel
    {
        void AddDisc(Disc disc);
        void DeleteDisc(Disc disc);
        void UpdateDisc(Disc disc);
        List<Disc> GetAllDiscs();
        Disc GetDiscById(string discId);
    }
}