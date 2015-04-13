using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Utils
{
    public static class Link
    {
        public static string ToAddBook()
        {
            return "/View/AddBook.aspx";
        }

        public static string ToBookList()
        {
            return "/View/BookListView.aspx";
        }

        public static string ToEditBook(string bookId)
        {
            return "/View/EditBookView.aspx?BookId=" + bookId;
        }

        internal static string ToEditDisc(string discId)
        {
            return "/View/EditDiscView.aspx?discId=" + discId;

        }
        internal static string ToAddDisc()
        {
            return "/View/AddDiscView.aspx";
        }
        internal static string ToDiscList()
        {
            return "/View/DiscListView.aspx";
        }
        public static string GetUploadPath()
        {
            return "C://upload//";
        }

        public static string GetBookEbookDispatcher(BookTypeEnum bookType)
        {
            switch (bookType)
            {
                case BookTypeEnum.Book: return "BookListView.aspx";
                case BookTypeEnum.Ebook:
                default:
                    return "/View/EBookListView.aspx";
            }
        }

        internal static string GetAddEbook()
        {
            //return "AddEbookView.aspx";
            return "/View/AddBook.aspx?bookType=2";
        }

        internal static string GetEbookList()
        {
            //return "EbookListView.aspx";
            return "/View/BookListView.aspx?bookType=2";
        }

        internal static string GetEditEbook(string bookId)
        {
            //return "EditEbookView.aspx";
            return "/View/EditBookView.aspx?bookType=2&bookId=" + bookId;
        }

        internal static string GetErrorPage(string message, string returnTo)
        {
            return "/Utils/ErrorPage.aspx?errorMessage=" + message + "&returnTo=" + returnTo;
        }

        internal static string GetAddReservation()
        {
            return "/View/AddReservationViewM.aspx";
        }

        internal static string GetReservationList()
        {
            return "/View/ReservationListViewM.aspx";
        }

        internal static string GetLoginPage()
        {
            return "/Login.aspx";
        }
    }
}