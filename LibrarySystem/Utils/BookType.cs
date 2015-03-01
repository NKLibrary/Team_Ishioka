using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Utils
{
    public enum BookTypeEnum
    {
        Book,
        Ebook
    }
    public class BookType
    {
        public static string GetBookType(BookTypeEnum bookType)
        {
            switch (bookType)
            {
                case BookTypeEnum.Book: return "1";
                case BookTypeEnum.Ebook:
                default:
                    return "2";
            }
        }

        public static bool IsBook(string bookType)
        {
            if (bookType == null || bookType.Equals(BookType.GetBookType(BookTypeEnum.Book)))
                return true;
            else 
                return false;
        }
    }
}