using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VirtualCollege.Models.Entity;
using VirtualCollege.Utils;

namespace VirtualCollege.Models
{
    public class BookModel : IBookModel
    {

        public List<Entity.Book> GetAllBooks()
        {
            List<Book> books = new List<Book>(10);

            //books.Add(new Book { Author = "John", BookId = "1", BookTitle = "Uncle Tom's house" });
            //books.Add(new Book { Author = "Alex", BookId = "2", BookTitle = "Adventure story" });
            //return books;

            string sql = "select BookId, BookTitle, Author, Publisher, Category, PublishedYear, TotalPages, isbn, description, ThumbnailPicture, Availablecopies, status from Book order by BookId";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            foreach (DataRow row in table.Rows)
            {
                Book book = new Book();
                book.BookId = row["BookId"].ToString();
                book.Author = row["Author"].ToString();
                book.BookTitle = row["BookTitle"].ToString();
                book.Publisher = row["Publisher"].ToString();
                book.Category = row["Category"].ToString();
                book.PublishedYear = Convert.ToDateTime(row["PublishedYear"].ToString());
                book.TotalPages = int.Parse(row["TotalPages"].ToString());
                book.ISBN = row["isbn"].ToString();
                book.Description = row["description"].ToString();
                book.ThumbnailPicture = row["ThumbnailPicture"].ToString();
                book.AvailableCopies = int.Parse(row["Availablecopies"].ToString());
                book.Status = row["status"].ToString();
                books.Add(book);
            }
            return books;
        }

        public void AddBook(Book book)
        {
            //String sql = "insert into Book (BookId, BookTitle, Author, Publisher, Category, PublishedYear, TotalPages, isbn, description, Availablecopies, status) values ('5', 'jimmy', 'nove', 'nove1','nov2e', '', '','','','','')";
            String sql = "insert into Book (BookTitle, Author, Publisher, Category, PublishedYear, TotalPages, isbn, description, ThumbnailPicture, Availablecopies, status) values ('"
                + book.BookTitle + "', '" + book.Author + "', '"
                + book.Publisher + "','" + book.Category + "', '" + book.PublishedYear + "', '"
                + book.TotalPages + "','" + book.ISBN + "','" + book.Description + "','" + book.ThumbnailPicture + "','"
                + book.AvailableCopies + "','" + book.Status + "')";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public void EditBook(Entity.Book book)
        {
            string sql = "update Book set " + "BookTitle = '" + book.BookTitle + "', " + "Author='" + book.Author + "',"
                + "Publisher='" + book.Publisher + "'," + "Category='" + book.Category + "'," + "PublishedYear='" + book.PublishedYear + "',"
                + "TotalPages='" + book.TotalPages + "'," + "isbn='" + book.ISBN + "'," + "description='" + book.Description + "',"
                + "ThumbnailPicture='" + book.ThumbnailPicture + "'," +  "Availablecopies='" + book.AvailableCopies + "'," + "status='" + book.Status + "'"
                + " where BookId='" + book.BookId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public void DeleteBook(Entity.Book book)
        {
            string sql = "delete from Book where BookId='" + book.BookId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public Book GetBook(string bookId)
        {
            Book book = new Book();
            string sql = "select BookId, BookTitle, Author, Publisher, Category, PublishedYear, TotalPages, isbn, description, ThumbnailPicture, Availablecopies, status from Book where bookId='" + bookId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            foreach (DataRow row in table.Rows)
            {
                book.BookId = row["BookId"].ToString();
                book.Author = row["Author"].ToString();
                book.BookTitle = row["BookTitle"].ToString();
                book.Publisher = row["Publisher"].ToString();
                book.Category = row["Category"].ToString();
                book.PublishedYear = Convert.ToDateTime(row["PublishedYear"].ToString());
                book.TotalPages = int.Parse(row["TotalPages"].ToString());
                book.ISBN = row["isbn"].ToString();
                book.Description = row["description"].ToString();
                book.ThumbnailPicture = row["ThumbnailPicture"].ToString();
                book.AvailableCopies = int.Parse(row["Availablecopies"].ToString());
                book.Status = row["status"].ToString();
            }
            return book;
        }
    }
}