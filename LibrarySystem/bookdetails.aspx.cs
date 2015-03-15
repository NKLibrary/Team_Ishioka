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
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HConnection"].ToString());
                conn.Open();
                string query = "select * from Book where BookId =" + id;
                SqlDataAdapter ebookAdapter = new SqlDataAdapter(query, conn);
                DataSet ebookSet = new DataSet();
                ebookAdapter.Fill(ebookSet, "Book");
                foreach (DataRow ebookRow in ebookSet.Tables["Book"].Rows)
                {
                   /* Response.Write("\t" + ebookRow[0]);
                    Response.Write("\t" + ebookRow[1]);*/
                    lbltitle.Text = ebookRow[1].ToString();
                    txtauthor.Text = ebookRow[2].ToString();
                    txtpublisher.Text = ebookRow[3].ToString();
                    txtcategory.Text = ebookRow[4].ToString();
                    txtyear.Text = ebookRow[5].ToString();
                    txtpages.Text = ebookRow[6].ToString();
                    txtISBN.Text = ebookRow[7].ToString();
                    txtdesc.Text = ebookRow[8].ToString();
                    txtstatus.Text = ebookRow[11].ToString();


                }
            }
            catch (SqlException ex) { }
        }
        }
    }
