using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using VirtualCollege.Models;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace VirtualCollege.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e) 
        {
            DateTimeLbl.Text = System.DateTime.Now.ToString();
        }
        protected void Button2_Click(object sender, EventArgs e)
             {
                 Nametb.Text = "";
                 Addresstb.Text = "";
                 Citytb.Text = "";
                 Postaltb.Text = "";
                 Hometb.Text = "";
                 Celltb.Text = "";
                 Emailtb.Text = "";
                 SecEmailtb.Text = "";
                 Schooltb.Text = "";
             }

        protected void SecEmailtb_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
                 string name,address,city,postal,home,phone,email,secemail,school,gender,stud, province,status,password,lastname="",midname="";
                 name = Nametb.Text;
                 address=Addresstb.Text;
                 city=Citytb.Text; 
                 postal=Postaltb.Text;
                 home=Hometb.Text;
                 password = passwordtb.Text;
                 phone = Celltb.Text;
                 email=Emailtb.Text;
                 secemail=SecEmailtb.Text;
                 school=Schooltb.Text;
                 gender = RadioButtonList1.Text;
                 province = DropDownList1.Text;
                 status = RadioButtonList2.Text;

                 ExecuteInsert(name, gender, address, city, province, postal, home,phone,email, status, school, password,lastname,midname);
        }
          
        private void ExecuteInsert(string name, string gender, string address, string city, string province, string postalcode, string home, string cell, string email,string stud, string school, string password, string lastname, string midname)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HConnection"].ToString());
        //string sql = @"INSERT INTO Member (Password, FirstName, Gender, Address, City, Province, PostalCode, Country, HomePhone, CellPhone, Email, Student, SchoolName) VALUES "
          //          + " (@Name,@UserName,@Password,@Gender,@Age,@Address)";

        string sql = "INSERT INTO Member (Password, FirstName,MiddleName,LastName, Gender, Address, City, Province, PostalCode, Country, HomePhone, CellPhone, Email, Student, SchoolName) VALUES ('" + password + "','" + name + "','" + midname + "','" + lastname + "','" + gender + "','" + address + "','" + city + "','" + province + "','" + postalcode + "','CA','" + home + "','" + cell + "','" + email + "','" + stud + "','" + school + "')";
       // Label1.Text = sql;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn); 
            SqlParameter[] param = new SqlParameter[12];
            //param[0] = new SqlParameter("@id", SqlDbType.Int, 20);
            param[0] = new SqlParameter("@Password", SqlDbType.VarChar, 50);
            param[1] = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
            param[2] = new SqlParameter("@Gender", SqlDbType.VarChar, 50);
            param[3] = new SqlParameter("@Address", SqlDbType.VarChar, 50);
            param[4] = new SqlParameter("@City", SqlDbType.Char, 10);
            param[5] = new SqlParameter("@Province", SqlDbType.Int, 100);
            param[6] = new SqlParameter("@PostalCode", SqlDbType.VarChar, 50);
            param[7] = new SqlParameter("@HomePhone", SqlDbType.VarChar, 50);
            param[8] = new SqlParameter("@CellPhone", SqlDbType.VarChar, 50);
            param[9] = new SqlParameter("@Email", SqlDbType.VarChar, 50);
            param[10] = new SqlParameter("@Student", SqlDbType.VarChar, 50);
            param[11] = new SqlParameter("@SchoolName", SqlDbType.VarChar, 50);
            
            //param[5] = new SqlParameter("@Address", SqlDbType.VarChar, 50);

            
            param[0].Value = password;
            //param[1].Value = username;
            param[2].Value = password;
            param[3].Value = gender;
            //param[4].Value = age;
            param[5].Value = address;
            param[0].Value = password;
            param[0].Value = password;
            param[0].Value = password;
            param[0].Value = password;

            for (int i = 0; i < param.Length; i++)
            {
                //cmd.Parameters.Add(param[i]);
            }

            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            conn.Close();
        }
}
        }

       
        
    }
