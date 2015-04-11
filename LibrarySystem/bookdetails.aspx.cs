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
        string bookid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           bookid=  Request.QueryString["id"];
            int id = Convert.ToInt32(bookid);
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

        protected void btnReserveBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("View/AddReservationViewM.aspx?itemtype=Book&itemid=" + bookid);
        }
        }
    }
