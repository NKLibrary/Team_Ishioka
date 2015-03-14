using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege
{
    public partial class Dvd : System.Web.UI.Page
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

                string sql = "SELECT * FROM dbo.Disc";
                cmd = new SqlCommand(sql, con);
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    drpBookTitle.Items.Insert(0, "-- Select DVD Title --");
                    for (int a = 0; a < ds.Tables[0].Rows.Count; a++)
                    {
                        drpBookTitle.Items.Insert(a + 1, Convert.ToString(ds.Tables[0].Rows[a]["DiscTitle"]));
                    }

                }
                else
                {
                    drpBookTitle.DataSource = null;

                }
                try { ds.Tables[0].Clear(); }
                catch { }

                con.Close();
            }
        }
        public void search(string searchbook)
        {
            string sql;
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                if (searchbook != "-- Select DVD Title --")
                {
                    sql = "SELECT * FROM dbo.Disc WHERE DiscTitle LIKE '" + searchbook + "' ";
                    cmd = new SqlCommand(sql, con);
                    da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    ds.Clear();
                    con.Close();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "s1", "<script> alert('Please Select DVD'); </script>", false);
                    FillData();
                }
            }
        }
        protected void drpBookTitle_SelectedIndexChanged(object sender, EventArgs e)
        {
            string searchbook = drpBookTitle.SelectedItem.ToString();
            search(searchbook);
        }

              
    }
}