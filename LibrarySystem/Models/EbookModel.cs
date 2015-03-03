using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using VirtualCollege.Models.Entity;
using VirtualCollege.Utils;

namespace VirtualCollege.Models
{
    public class EbookModel : IEbookModel
    {
        public List<Entity.Ebook> GetAllEbooks()
        {
            List<Ebook> books = new List<Ebook>();
            string sql = "select eBookId, eBookTitle, Author, Publisher, Category, PublishedYear, TotalPages, isbn, description, ThumbnailPicture, Availablecopies, status from eBook order by eBookId";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            foreach (DataRow row in table.Rows)
            {
                Ebook book = new Ebook();
                book.BookId = row["eBookId"].ToString();
                book.Author = row["Author"].ToString();
                book.BookTitle = row["eBookTitle"].ToString();
                book.Publisher = row["Publisher"].ToString();
                book.Category = row["Category"].ToString();
                book.PublishedYear = Convert.ToDateTime(row["PublishedYear"].ToString()+"-01-01");
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

        public Entity.Ebook GetEbookById(string bookId)
        {
            Ebook book = new Ebook();
            string sql = "select eBookId, eBookTitle, Author, Publisher, Category, PublishedYear, TotalPages, isbn, description, ThumbnailPicture, Availablecopies, status from eBook where ebookId='" + bookId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            foreach (DataRow row in table.Rows)
            {
                book.BookId = row["eBookId"].ToString();
                book.Author = row["Author"].ToString();
                book.BookTitle = row["eBookTitle"].ToString();
                book.Publisher = row["Publisher"].ToString();
                book.Category = row["Category"].ToString();
                book.PublishedYear = Convert.ToDateTime(row["PublishedYear"].ToString() + "-01-01");
                book.TotalPages = int.Parse(row["TotalPages"].ToString());
                book.ISBN = row["isbn"].ToString();
                book.Description = row["description"].ToString();
                book.ThumbnailPicture = row["ThumbnailPicture"].ToString();
                book.AvailableCopies = int.Parse(row["Availablecopies"].ToString());
                book.Status = row["status"].ToString();
            }
            return book;
        }

        public void AddEbook(Entity.Ebook book)
        {
            String sql = "insert into eBook (eBookTitle, Author, Publisher, Category, PublishedYear, TotalPages, isbn, description, ThumbnailPicture, Availablecopies, status) values ('"
                + book.BookTitle + "', '" + book.Author + "', '"
                + book.Publisher + "','" + book.Category + "', '" + book.PublishedYear.ToShortDateString().Substring(0, 4) + "', '"
                + book.TotalPages + "','" + book.ISBN + "','" + book.Description + "','" + book.ThumbnailPicture + "','"
                + book.AvailableCopies + "','" + book.Status + "')";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public void EditEbook(Entity.Ebook book)
        {
            string sql = "update eBook set " + "eBookTitle = '" + book.BookTitle + "', " + "Author='" + book.Author + "',"
                + "Publisher='" + book.Publisher + "'," + "Category='" + book.Category + "'," + "PublishedYear='" + book.PublishedYear.ToShortDateString().Substring(0, 4) + "',"
                + "TotalPages='" + book.TotalPages + "'," + "isbn='" + book.ISBN + "'," + "description='" + book.Description + "',"
                + "ThumbnailPicture='" + book.ThumbnailPicture + "'," + "Availablecopies='" + book.AvailableCopies + "'," + "status='" + book.Status + "'"
                + " where eBookId='" + book.BookId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public void DeleteEbook(Entity.Ebook book)
        {
            string sql = "delete from eBook where eBookId='" + book.BookId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }
    }
}