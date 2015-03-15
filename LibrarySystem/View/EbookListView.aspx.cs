using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCollege.View
{
    public partial class EbookListView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Lbinsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["EbookTitle"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtName")).Text;
            SqlDataSource1.InsertParameters["Author"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtAuthor")).Text;
            SqlDataSource1.InsertParameters["Publisher"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtPublisher")).Text;
            SqlDataSource1.InsertParameters["Category"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtCategory")).Text;
            SqlDataSource1.InsertParameters["PublishedYear"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtPublishYear")).Text;
            SqlDataSource1.InsertParameters["TotalPages"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtTotalpages")).Text;
            SqlDataSource1.InsertParameters["ISBN"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtISBN")).Text;
            SqlDataSource1.InsertParameters["Description"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("Description")).Text;
            SqlDataSource1.InsertParameters["ThumbnailPicture"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtThumbnailPicture")).Text;
            SqlDataSource1.InsertParameters["AvailableCopies"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtavailablecopys")).Text;
            SqlDataSource1.InsertParameters["Status"].DefaultValue = ((TextBox)EbookGridView1.FooterRow.FindControl("txtstatus")).Text;

            SqlDataSource1.Insert();

        } 
    }
}