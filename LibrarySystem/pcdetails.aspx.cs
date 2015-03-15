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
    public partial class pcdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pid = Request.QueryString["id"];
            int id = Convert.ToInt32(pid);
              try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HConnection"].ToString());
                conn.Open();
                string query = "select * from PC where PCId =" + id;
                SqlDataAdapter PCAdapter = new SqlDataAdapter(query, conn);
                DataSet PCSet = new DataSet();
                PCAdapter.Fill(PCSet, "PC");
                foreach (DataRow PCRow in PCSet.Tables["PC"].Rows)
                {
                    lblid.Text = PCRow[0].ToString();
                    txtstatus.Text = PCRow[1].ToString();
                    
                }
            }
            catch (SqlException ex) { }
        }
        

    }
}