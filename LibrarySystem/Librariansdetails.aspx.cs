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
//using System.Web.UI.ScriptManager;

namespace VirtualCollege
{
    public partial class Librariansdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=H-Machine;Initial Catalog=LibraryDB;Integrated Security=True;");
      //  SqlConnection con = new SqlConnection(@"Data Source=H-MACHINE;Initial Catalog=LibraryDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False");
        protected void Page_Load(object sender, EventArgs e)
        {

            libdate.Text= System.DateTime.Now.ToString();
        }

        protected void Btninsert_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //libdate.Text = System.DateTime.Now.ToString();
            cmd.CommandText = "insert into Librarian values('" + libpwd.Text + "','" + libfname.Text + "','" + libmname.Text + "','" + liblname.Text + "','" + libdate.Text + "','" + libgender.Text + "','" + libadd.Text + "','" + libcity.Text + "','" + libprovince.Text + "','" + libpost.Text + "','" + libcountry.Text + "','" + libcell.Text + "','" + libemail.Text + "')";
            cmd.ExecuteNonQuery();
            lblMessage.Text = "New Librarian Added !!";
            lblMessage.Visible = true;
            con.Close();
            Response.Redirect("Librariansdetails.aspx");
        }
    }
}