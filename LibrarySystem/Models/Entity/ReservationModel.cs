using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VirtualCollege.Utils;

namespace VirtualCollege.Models.Entity
{
    public class ReservationModel : IReservationModel
    {
        private void Test()
        {
            Reservation r = new Reservation();
            r.itemType = ItemType.Book.ToString();
            r.itemId = "1002";
            r.userId = "3001477";
            r.expireDate = DateTime.Now;
            r.processDate = DateTime.Now;
            r.processDate = DateTime.Now;
            r.status = VirtualCollege.Utils.Settings.ReserveStatus.Pending.ToString();

            this.AddReservation(r);
        }
        public void AddReservation(Reservation reservation)
        {
            string sql = "insert into Reservation (itemtype, itemid, userid, expiredate, processdate, pickupdate, status) values (@itemType, @itemId, @userId, @expireDate, @processDate, @pickupDate, @status)";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            comm.Parameters.Add(new SqlParameter("@itemType", DbType.String));
            comm.Parameters["@itemType"].Value = reservation.itemType;
            comm.Parameters.Add(new SqlParameter("@itemId", DbType.String));
            comm.Parameters["@itemId"].Value = reservation.itemId;
            comm.Parameters.Add(new SqlParameter("@userId", DbType.String));
            comm.Parameters["@userId"].Value= reservation.userId;
            comm.Parameters.Add(new SqlParameter("@expireDate", DbType.Date));
            comm.Parameters["@expireDate"].Value = reservation.expireDate.ToString("yyyy-MM-dd"); 
            comm.Parameters.Add(new SqlParameter("@processDate", DbType.Date));
            comm.Parameters["@processDate"].Value = reservation.processDate.ToString("yyyy-MM-dd");
            comm.Parameters.Add(new SqlParameter("@pickupDate", DbType.Date));
            comm.Parameters["@pickupDate"].Value = reservation.pickupDate.ToString("yyyy-MM-dd");
            comm.Parameters.Add(new SqlParameter("@status", DbType.String));
            comm.Parameters["@status"].Value = reservation.status;
            GenericDataAccess.ExecuteNonQuery(comm);

        }

        public void DeleteReservation(Reservation reservation)
        {
            throw new NotImplementedException();
        }

        public void UpdateReservation(Reservation reservation)
        {
            throw new NotImplementedException();
        }

        public Reservation GetReservationById(string reservationId)
        {
            throw new NotImplementedException();
        }

        public List<Reservation> GetAllReservations()
        {
            throw new NotImplementedException();
        }
    }
}