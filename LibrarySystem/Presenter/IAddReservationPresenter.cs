using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.Presenter
{
    public interface IAddReservationPresenter
    {
        void AddReservation(Reservation reservation);
        VirtualCollege.Models.EntityFramework.Book GetBook(string bookId);
        VirtualCollege.Models.EntityFramework.Ebook GetEbook(string ebookId);
        VirtualCollege.Models.EntityFramework.Disc getDisc(string discId);
        VirtualCollege.Models.EntityFramework.Room getRoom(string roomId);
        VirtualCollege.Models.EntityFramework.PC getPc(string pcId);
    }
}
