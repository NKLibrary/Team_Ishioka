using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace VirtualCollege
{
    public partial class dvddetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dvdid=Request.QueryString["id"];
            int id = Convert.ToInt32(dvdid);
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
                conn.Open();
                string query = "select * from Disc where DiscId ="+dvdid;
                SqlDataAdapter dvdAdapter = new SqlDataAdapter(query,conn);
                DataSet dvdSet = new DataSet();
                dvdAdapter.Fill(dvdSet, "Disc");
                foreach (DataRow dvdRow in dvdSet.Tables["Disc"].Rows)
                {
                    Response.Write("\t"+dvdRow[0]);
                    Response.Write("\t" + dvdRow[1]);

                }
            }
            catch(SqlException ex) { }
        }
    }
}