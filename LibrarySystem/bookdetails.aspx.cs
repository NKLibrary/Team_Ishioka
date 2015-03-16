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
    public partial class bookdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             string ebookid=Request.QueryString["id"];
            int id = Convert.ToInt32(ebookid);
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ToString());
                conn.Open();
                string query = "select * from Book where BookId =" + id;
                SqlDataAdapter ebookAdapter = new SqlDataAdapter(query, conn);
                DataSet ebookSet = new DataSet();
                ebookAdapter.Fill(ebookSet, "Book");
                foreach (DataRow ebookRow in ebookSet.Tables["Book"].Rows)
                {
                    Response.Write("\t" + ebookRow[0]);
                    Response.Write("\t" + ebookRow[1]);

                }
            }
            catch (SqlException ex) { }
        }
        }
    }
