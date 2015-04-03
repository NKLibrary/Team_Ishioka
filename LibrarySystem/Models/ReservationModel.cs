using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using VirtualCollege.Utils;
using System.Data.Entity;
using VirtualCollege.Models.EntityFramework;

namespace VirtualCollege.Models.Entity
{
    public class ReservationModel : IReservationModel
    {
        private void TestDeleteReservationByAdo()
        {
            Reservation r = new Reservation();
            r.reservationId = "11027";
            r.itemType = VirtualCollege.Utils.Settings.ItemType.Book.ToString();
            r.itemId = "1002";
            r.userId = "3001477";
            r.expireDate = DateTime.Now;
            r.processDate = DateTime.Now;
            r.pickupDate = DateTime.Now;
            r.status = VirtualCollege.Utils.Settings.ReserveStatus.Pending.ToString();

            this.DeleteReservation(r);
        }

        private void TestUpdateReservationByEntityFramework()
        {
            VirtualCollege.Models.EntityFramework.Reservation r = new VirtualCollege.Models.EntityFramework.Reservation();
            r.ReservationId = 12029;
            r.ItemType = VirtualCollege.Utils.Settings.ItemType.Book.ToString();
            r.ItemId = 20001;
            r.UserId = 3001477;
            r.ExpireDate = DateTime.Now;
            r.ProcessDate = DateTime.Now;
            r.PickupDate = DateTime.Now;
            r.Status = VirtualCollege.Utils.Settings.ReserveStatus.Pending.ToString();

            this.UpdateReservation(r);
        }
        private void TestAddReservationByAdo()
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
            Console.WriteLine(sql);
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            comm.Parameters.Add(new SqlParameter("@reservationId", DbType.String));
            comm.Parameters["@reservationId"].Value = reservation.reservationId;
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public void UpdateReservation(VirtualCollege.Models.EntityFramework.Reservation reservation)
        {
            using (var db = new LibraryDBEntities())
            {
                // user-defined data entity to Entity Framework's default entity
                var item = db.Reservations.Where(r => r.ReservationId == reservation.ReservationId).FirstOrDefault();
                item.ProcessDate = reservation.ProcessDate;
                item.PickupDate = reservation.PickupDate;
                item.Status = reservation.Status;
                db.SaveChanges();
            }
        }

        public VirtualCollege.Models.EntityFramework.Reservation GetReservationById(string reservationId)
        {
            using (var db = new LibraryDBEntities())
            {
                return db.Reservations.Where(r => r.ReservationId+"" == reservationId).FirstOrDefault();
            }
        }

        public List<VirtualCollege.Models.EntityFramework.Reservation> GetAllReservations()
        {
            List<VirtualCollege.Models.EntityFramework.Reservation> list = new List<VirtualCollege.Models.EntityFramework.Reservation>();
            using (var db = new LibraryDBEntities())
            {
                var result = from r in db.Reservations
                             select r;
                foreach (var item in result)
                {
                    list.Add(item);
                }
            }
            return list;
        }


        public List<Reservation> GetReservationByUser(string userId)
        {
            string sql = "select reservationid, itemtype, itemid, userid, expiredate, processdate, pickupdate, status from Reservation where userid=@userId order by expiredate";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            comm.Parameters.Add(new SqlParameter("@userId", DbType.String));
            comm.Parameters["@userId"].Value = userId;
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);

            List<Reservation> reservations = new List<Reservation>();
            foreach (DataRow row in table.Rows)
            {
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


        public List<EntityFramework.Reservation> GetReservationByStatus(Settings.ReserveStatus reserveStatus)
        {
            List<VirtualCollege.Models.EntityFramework.Reservation> list = new List<EntityFramework.Reservation>();
            switch (reserveStatus)
            {
                case Settings.ReserveStatus.Pending:
                    using (var db = new LibraryDBEntities())
                    {
                        var result = db.Reservations.Where(r => r.Status == Settings.ReserveStatus.Pending.ToString()).Select(r => r);
                        foreach (var item in result)
                        {
                            list.Add(item);
                        }
                    }
                    break;
                case Settings.ReserveStatus.Processed:
                case Settings.ReserveStatus.Cancel:
                case Settings.ReserveStatus.Close:
                    using (var db = new LibraryDBEntities())
                    {
                        var result = db.Reservations
                            .Where(r => (r.Status == Settings.ReserveStatus.Processed.ToString())
                            || (r.Status == Settings.ReserveStatus.Close.ToString())
                            || (r.Status == Settings.ReserveStatus.Processed.ToString()))
                            .Select(r => r);
                        foreach (var item in result)
                        {
                            list.Add(item);
                        }
                    }
                    break;

            }
            return list;
        }



        public Member GetMemberById(string memberId)
        {
            Member member;
            using (var db = new LibraryDBEntities())
            {
                member = db.Members.Where(m => m.UserId + "" == memberId).FirstOrDefault();
                if (member == null) throw new Exception("Sorry, cannot find the specified member");
                else return member;
            }
        }


        public string getMemberNameById(string userId)
        {
            using (var db = new LibraryDBEntities())
            {
                Member member = db.Members.Where(m => m.UserId + "" == userId).FirstOrDefault();
                if (member != null)
                {
                    return member.FirstName + " " + member.LastName;
                }
                else return "N/A";
            }
        }
    }
}