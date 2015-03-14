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
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HConnection"].ToString());
                conn.Open();
                string query = "select * from Disc where DiscId ="+dvdid;
                SqlDataAdapter dvdAdapter = new SqlDataAdapter(query,conn);
                DataSet dvdSet = new DataSet();
                dvdAdapter.Fill(dvdSet, "Disc");
                foreach (DataRow dvdRow in dvdSet.Tables["Disc"].Rows)
                {
                   /* Response.Write("\t"+dvdRow[0]);
                    Response.Write("\t" + dvdRow[1]);
                    Response.Write("\t" + dvdRow[2]);
                    Response.Write("\t" + dvdRow[3]);
                    Response.Write("\t" + dvdRow[4]);
                    Response.Write("\t" + dvdRow[5]);
                    Response.Write("\t" + dvdRow[6]);
                    Response.Write("\t" + dvdRow[7]);
                    Response.Write("\t" + dvdRow[8]);
                    Response.Write("\t" + dvdRow[9]);*/
                    lbltitle.Text = dvdRow[1].ToString();
                    lblartist.Text=dvdRow[2].ToString();
                    lbldirector.Text = dvdRow[3].ToString();
                    lbldist.Text = dvdRow[4].ToString();
                    lblrelease.Text = dvdRow[5].ToString();
                    lblcategory.Text = dvdRow[6].ToString();
                    lbldesc.Text = dvdRow[9].ToString();
                    lblduration.Text = dvdRow[10].ToString();
                    lblstatus.Text = dvdRow[11].ToString();
                    
                }
            }
            catch(SqlException ex) { }
        }
    }
}