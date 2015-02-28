using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.Models
{
    public interface IBookModel
    {
        List<Book> GetAllBooks();
        void AddBook(Book book);
        void EditBook(Book book);
        void DeleteBook(Book book);
        Book GetBook(string bookId);
    }
}
