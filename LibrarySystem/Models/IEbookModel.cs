using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.Models
{
   public  interface IEbookModel
    {
        List<Ebook> GetAllEbooks();
        Ebook GetEbookById(string bookId);
        void AddEbook(Ebook ebook);
        void EditEbook(Ebook ebook);
        void DeleteEbook(Ebook ebook);
    }
}
