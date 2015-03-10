using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege
{
    public partial class Ebooks : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["LibraryDB_ConnectionString"].ConnectionString;
        DataSet ds = new DataSet();
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillData();
            }
        }
        public void FillData()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();

                string sql = "SELECT * FROM dbo.Ebook";
                cmd = new SqlCommand(sql, con);
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    drpBookTitle.Items.Insert(0, "-- Select Book Title --");
                    for (int a = 0; a < ds.Tables[0].Rows.Count; a++)
                    {
                        drpBookTitle.Items.Insert(a + 1, Convert.ToString(ds.Tables[0].Rows[a]["EbookTitle"]));
                    }
                    drpAuthor.Items.Insert(0, "-- Select Book Author --");
                    for (int a = 0; a < ds.Tables[0].Rows.Count; a++)
                    {
                        drpAuthor.Items.Insert(a + 1, Convert.ToString(ds.Tables[0].Rows[a]["Author"]));
                    }

                }
                else
                {
                    drpBookTitle.DataSource = null;
                    drpAuthor.DataSource = null;
                }
                try { ds.Tables[0].Clear(); }
                catch { }

                con.Close();
            }
        }


        public void search(string searchbook, string searchauthor)
        {
            string sql;
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                if (searchbook == "-- Select Book Title --" && searchauthor != "-- Select Book Author --")
                {
                    sql = "SELECT * FROM dbo.Ebook WHERE Author LIKE '" + searchauthor + "' ";
                }
                else if (searchauthor == "-- Select Book Author --" && searchbook != "-- Select Book Title --")
                {
                    sql = "SELECT * FROM dbo.Ebook WHERE EbookTitle LIKE '" + searchbook + "' ";
                }
                else if (searchbook == "-- Select Book Title --" && searchauthor == "-- Select Book Author --")
                {
                    sql = "SELECT * FROM dbo.Ebook";
                }
                else
                {
                    sql = "SELECT * FROM dbo.Ebook WHERE EbookTitle LIKE '" + searchbook + "' OR Author LIKE '" + searchauthor + "' ";
                }

                cmd = new SqlCommand(sql, con);
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                ds.Clear();
                con.Close();

            }
        }


        protected void drpAuthor_SelectedIndexChanged(object sender, EventArgs e)
        {
            string searchauthor = drpAuthor.SelectedItem.ToString();
            search(drpBookTitle.SelectedItem.ToString(), searchauthor);
        }

        protected void drpBookTitle_SelectedIndexChanged(object sender, EventArgs e)
        {
            string searchbook = drpBookTitle.SelectedItem.ToString();
            search(searchbook, drpAuthor.SelectedItem.ToString());
        }
    }
}