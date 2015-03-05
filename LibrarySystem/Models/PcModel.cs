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
    public class PcModel : IPcModel
    {
        public void AddPc(VirtualCollege.Models.Entity.Pc pc)
        {
            string sql = "insert into pc (status) values ('" + pc.status + "')";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);

        }

        public void DeletePc(VirtualCollege.Models.Entity.Pc pc)
        {
            string sql = "delete from pc where pcid = '" + pc.pcId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public void UpdatePc(VirtualCollege.Models.Entity.Pc pc)
        {
            string sql = "update pc set status='" + pc.status + "' where pcid='" + pc.pcId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            GenericDataAccess.ExecuteNonQuery(comm);
        }

        public List<VirtualCollege.Models.Entity.Pc> GetAllPcs()
        {
            string sql = "select pcid, status from pc order by pcid";
            List<VirtualCollege.Models.Entity.Pc> pcs = new List<VirtualCollege.Models.Entity.Pc>();
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            foreach (DataRow row in table.Rows)
            {
                VirtualCollege.Models.Entity.Pc pc = new VirtualCollege.Models.Entity.Pc();
                pc.pcId = row["pcid"].ToString();
                pc.status = row["status"].ToString();
                pcs.Add(pc);
            }
            return pcs;
        }

        public VirtualCollege.Models.Entity.Pc GetPcById(string pcId)
        {
            string sql = "select pcid, status from pc where pcid='" + pcId + "'";
            DbCommand comm = GenericDataAccess.CreateCommand(sql);
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            VirtualCollege.Models.Entity.Pc pc = new VirtualCollege.Models.Entity.Pc();
            if (table.Rows.Count > 0)
            {
                pc.pcId = table.Rows[0]["pcid"].ToString();
                pc.status = table.Rows[0]["status"].ToString();
            }
            return pc;
        }
    }
}