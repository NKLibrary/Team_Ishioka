using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege.View
{
    public partial class BookListView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            }

        protected void lbinsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["BookTitle"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
            SqlDataSource1.InsertParameters["Author"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtAuthor")).Text;
            SqlDataSource1.InsertParameters["Publisher"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPublisher")).Text;
            SqlDataSource1.InsertParameters["Category"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCategory")).Text;
            SqlDataSource1.InsertParameters["PublishedYear"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPublishYear")).Text;
            SqlDataSource1.InsertParameters["TotalPages"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtTotalpages")).Text;
            SqlDataSource1.InsertParameters["ISBN"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtISBN")).Text;
            SqlDataSource1.InsertParameters["Description"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Description")).Text;
            SqlDataSource1.InsertParameters["ThumbnailPicture"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtThumbnailPicture")).Text;
            SqlDataSource1.InsertParameters["AvailableCopies"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtavailablecopys")).Text;
            SqlDataSource1.InsertParameters["Status"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtstatus")).Text;

            SqlDataSource1.Insert();
           
        } 

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}