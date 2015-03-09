using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Utils
{
    public static class Settings
    {
        public enum ItemType
        {
            Book,
            Ebook,
            Disc,
            Room,
            Pc
        }
        public enum ReserveStatus
        {
            Pending,
            Processed,
            Close,
            Cancel
        }

        //reserve
        public const string Invalid_BookType = "book type is invalid";
        public const string Invalid_a = "";
        public const string Place_Hold = "Thank you for your reservation!";
        public static DateTime Default_Reservation_Date = Convert.ToDateTime("2000-01-01");
    }
}