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
    public class PcModel : VirtualCollege.Models.IPcModel
    {
        public void AddPc(Pc pc)
        {
            string sql = "insert into pc (status) values ('" + pc.status + "')";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);

        }

        public void DeletePc(Pc pc)
        {
            string sql = "delete from pc where pcid = '" + pc.pcId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public void UpdatePc(Pc pc)
        {
            string sql = "update pc set status='" + pc.status + "' where pcid='" + pc.pcId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public List<Pc> GetAllPcs()
        {
            string sql = "select pcid, status from pc order by pcid";
            List<Pc> pcs = new List<Pc>();
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            foreach (DataRow row in table.Rows)
            {
                Pc pc = new Pc();
                pc.pcId = row["pcid"].ToString();
                pc.status = row["status"].ToString();
                pcs.Add(pc);
            }
            return pcs;
        }

        public Pc GetPcById(string pcId)
        {
            string sql = "select pcid, status from pc where pcid='" + pcId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            Pc pc = new Pc();
            if (table.Rows.Count > 0)
            {
                pc.pcId = table.Rows[0]["pcid"].ToString();
                pc.status = table.Rows[0]["status"].ToString();
            }
            return pc;
        }
    }
}