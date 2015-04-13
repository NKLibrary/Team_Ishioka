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
    public partial class Manager_Members : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Server=tcp:kx7kmubsk6.database.windows.net,1433;Database=LibraryDB2;User ID=weiyan@kx7kmubsk6;Password=Andylau123;Trusted_Connection=False;Encrypt=True;Connection Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {
            memdate.Text = System.DateTime.Now.ToString();

        }

        protected void Btninsertmember_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //libdate.Text = System.DateTime.Now.ToString();
            cmd.CommandText = "insert into Member values('" + mempwd.Text + "','" + memfname.Text + "','" + memmname.Text + "','" + memlname.Text + "','" + memgender.Text + "','" + memadd.Text + "','" + memcity.Text + "','" + memprovince.Text + "','" + mempost.Text + "','" + memcountry.Text + "','" + memcell.Text + "','" + "6573792" + "','" + mememail.Text + "','" + "Yes" + "','" + "Centennial" + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Manager_Members.aspx");
        }
    }
}