using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using VirtualCollege.Utils;

namespace VirtualCollege.Models.Entity
{
    public class DiscModel : IDiscModel
    {

        public void AddDisc(Disc disc)
        {
            string sql = "insert into Disc (DiscTitle, Artist, Director, Distributor, ReleaseDate, Language, Subtitle, Category, Description, Duration, ThumbnailPicture, Status) values ('"
                + disc.DiscTitle + "', '" + disc.Artist + "', '" + disc.Director + "', '"
                + disc.Distributor + "', '" + disc.ReleaseDate + "', '" + disc.Language + "', '"
                + disc.Subtitle + "', '" + disc.Category + "', '" + disc.Description + "', '"
                + disc.Duration + "', '" + disc.ThumbPicture + "', '" + disc.Status + "')";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);

        }

        public void DeleteDisc(Disc disc)
        {
            string sql = "delete from Disc where DiscId = '" + disc.DiscId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public void UpdateDisc(Disc disc)
        {
            string sql = "update Disc set " + " DiscTitle='" + disc.DiscTitle + "', Artist = '" + disc.Artist + "', Director='" + disc.Director
                + "', Distributor = '" + disc.Distributor + "', ReleaseDate = '" + disc.ReleaseDate + "', Language = '" + disc.Language
                + "', Subtitle = '" + disc.Subtitle + "', Category = '" + disc.Category + "', Description = '" + disc.Description
              + "', Duration = '" + disc.Duration + "', ThumbnailPicture = '" + disc.ThumbPicture + "', Status = '" + disc.Status + "' where discId='" + disc.DiscId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public List<Disc> GetAllDiscs()
        {
            List<Disc> discs = new List<Disc>();
            string sql = "select DiscId, DiscTitle, Artist, Director, Distributor, ReleaseDate, Language, Subtitle, Category, Description, Duration, ThumbnailPicture, Status FROM Disc";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            foreach (DataRow row in table.Rows)
            {
                Disc disc = new Disc();
                disc.DiscId = row["discId"].ToString();
                disc.DiscTitle = row["discTitle"].ToString();
                disc.Artist = row["Artist"].ToString();
                disc.Director = row["director"].ToString();
                disc.Distributor = row["Distributor"].ToString();
                disc.ReleaseDate = Convert.ToDateTime(row["ReleaseDate"].ToString());
                disc.Language = row["Language"].ToString();
                disc.Subtitle = row["Subtitle"].ToString();
                disc.Category = row["Category"].ToString();
                disc.Description = row["Description"].ToString();
                disc.Duration = row["Duration"].ToString();
                disc.ThumbPicture = row["ThumbnailPicture"].ToString();
                disc.Status = row["Status"].ToString();
                discs.Add(disc);
            }
            return discs;
        }

        public Disc GetDiscById(string discId)
        {
            Disc disc = new Disc();
            string sql = "select DiscId, DiscTitle, Artist, Director, Distributor, ReleaseDate, Language, Subtitle, Category, Description, Duration, ThumbnailPicture, Status FROM Disc where DiscId = '" + discId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            if (table.Rows.Count > 0)
            {
                DataRow row = table.Rows[0];
                disc.DiscId = row["discId"].ToString();
                disc.DiscTitle = row["discTitle"].ToString();
                disc.Artist = row["Artist"].ToString();
                disc.Director = row["director"].ToString();
                disc.Distributor = row["Distributor"].ToString();
                disc.ReleaseDate = Convert.ToDateTime(row["ReleaseDate"].ToString());
                disc.Language = row["Language"].ToString();
                disc.Subtitle = row["Subtitle"].ToString();
                disc.Category = row["Category"].ToString();
                disc.Description = row["Description"].ToString();
                disc.Duration = row["Duration"].ToString();
                disc.ThumbPicture = row["ThumbnailPicture"].ToString();
                disc.Status = row["Status"].ToString();
            }
            return disc;
        }
    }
}