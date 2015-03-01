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
    }
}