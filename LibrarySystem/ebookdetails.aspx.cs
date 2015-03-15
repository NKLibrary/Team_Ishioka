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
    public partial class ebookdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             string ebookid=Request.QueryString["id"];
            int id = Convert.ToInt32(ebookid);
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
                conn.Open();
                string query = "select * from Ebook where EbookId =" + ebookid;
                SqlDataAdapter ebookAdapter = new SqlDataAdapter(query, conn);
                DataSet ebookSet = new DataSet();
                ebookAdapter.Fill(ebookSet, "Ebook");
                foreach (DataRow ebookRow in ebookSet.Tables["Ebook"].Rows)
                {
                    Response.Write("\t" + ebookRow[0]);
                    Response.Write("\t" + ebookRow[1]);

                }
            }
            catch (SqlException ex) { }
        }
    }
}