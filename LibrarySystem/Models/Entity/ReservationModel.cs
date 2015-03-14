using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Globalization;
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
            r.reservationId = "11025";
            r.itemType = VirtualCollege.Utils.Settings.ItemType.Book.ToString();
            r.itemId = "1002";
            r.userId = "3001477";
            r.expireDate = DateTime.Now;
            r.processDate = DateTime.Now;
            r.pickupDate = DateTime.Now;
            r.status = VirtualCollege.Utils.Settings.ReserveStatus.Pending.ToString();

            //this.AddReservation(r);
            this.DeleteReservation(r);
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
            comm.Parameters["@userId"].Value = reservation.userId;
            comm.Parameters.Add(new SqlParameter("@expireDate", DbType.Date));
            //Console.WriteLine(DateTime.ParseExact(reservation.expireDate.ToShortDateString(), "yyyy-MM-dd", CultureInfo.InvariantCulture));

            comm.Parameters["@expireDate"].Value = reservation.expireDate.ToShortDateString();
            //comm.Parameters["@expireDate"].Value = DateTime.ParseExact(reservation.expireDate.ToShortDateString(), "yyyy-MM-dd", CultureInfo.InvariantCulture);
            comm.Parameters.Add(new SqlParameter("@processDate", DbType.Date));
            comm.Parameters["@processDate"].Value = reservation.processDate.ToShortDateString();
            //comm.Parameters["@processDate"].Value = DateTime.ParseExact(reservation.processDate.ToShortDateString(), "yyyy-MM-dd", CultureInfo.InvariantCulture);
            comm.Parameters.Add(new SqlParameter("@pickupDate", DbType.Date));
            comm.Parameters["@pickupDate"].Value = reservation.pickupDate.ToShortDateString();
            //comm.Parameters["@pickupDate"].Value = DateTime.ParseExact(reservation.pickupDate.ToShortDateString(), "yyyy-MM-dd", CultureInfo.InvariantCulture);
            comm.Parameters.Add(new SqlParameter("@status", SqlDbType.NVarChar));
            comm.Parameters["@status"].Value = reservation.status;
            GenericDataAccess.ExecuteNonQuery(comm);

        }

        public void DeleteReservation(Reservation reservation)
        {
            string sql = "delete from Reservation where reservationId = @reservationId";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            comm.Parameters.Add(new SqlParameter("@reservationId", DbType.String));
            comm.Parameters["@reservationId"].Value = reservation.reservationId;
            GenericDataAccess.ExecuteNonQuery(comm);
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


        public List<Reservation> GetReservationByUser(string userId)
        {
            string sql = "select reservationid, itemtype, itemid, userid, expiredate, processdate, pickupdate, status from Reservation where userid=@userId order by expiredate";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            comm.Parameters.Add(new SqlParameter("@userId", DbType.String));
            comm.Parameters["@userId"].Value = userId;
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            
            List<Reservation> reservations = new List<Reservation>();
            foreach (DataRow row in table.Rows){
                Reservation reservation = new Reservation();
                reservation.reservationId = row["reservationId"].ToString();
                reservation.itemType = row["itemtype"].ToString();
                reservation.itemId = row["itemId"].ToString();
                reservation.userId = row["userId"].ToString();
                reservation.expireDate = Convert.ToDateTime(row["expireDate"].ToString());
                reservation.processDate = Convert.ToDateTime(row["processDate"].ToString());
                reservation.pickupDate = Convert.ToDateTime(row["pickupDate"].ToString());
                reservation.status = row["status"].ToString();
                reservations.Add(reservation);
            }
            return reservations;
        }
    }
}