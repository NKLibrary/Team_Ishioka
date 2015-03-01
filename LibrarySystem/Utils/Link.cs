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
            return "AddBook.aspx";
        }

        public static string ToBookList()
        {
            return "BookListView.aspx";
        }

        public static string ToEditBook(string bookId)
        {
            return "EditBookView.aspx?BookId=" + bookId;
        }

        internal static string ToEditDisc(string discId)
        {
            return "EditDiscView.aspx?discId=" + discId;

        }
        internal static string ToAddDisc()
        {
            return "AddDiscView.aspx";
        }
        internal static string ToDiscList()
        {
            return "DiscListView.aspx";
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
                    return "EBookListView.aspx";
            }
        }

        internal static string GetAddEbook()
        {
            //return "AddEbookView.aspx";
            return "AddBook.aspx?bookType=2";
        }

        internal static string GetEbookList()
        {
            //return "EbookListView.aspx";
            return "BookListView.aspx?bookType=2";
        }

        internal static string GetEditEbook(string bookId)
        {
            //return "EditEbookView.aspx";
            return "EditBookView.aspx?bookType=2&bookId="+bookId;
        }
    }
}