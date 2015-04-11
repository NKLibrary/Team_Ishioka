<%@ Page Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="ebooks.aspx.cs" Inherits="VirtualCollege.Ebooks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="Master_Main_Content" runat="server">
    <link href="css/menu.css" rel="stylesheet" />
          <br />
  Welcome to Ebooks page!
    
      &nbsp;&nbsp;<br />
    <br />
          <table style="width: 100%">
              <tr>
                  <td style="height: 30px; width: 152px">
                      <asp:Label ID="ebook_titleLbl" runat="server" CssClass="infoLabel" Text="Enter Ebook Title:"></asp:Label>
&nbsp;</td>
                  <td style="height: 30px; width: 294px">
                      <asp:DropDownList ID="drpBookTitle" runat="server" CssClass="infoDrop" OnSelectedIndexChanged="drpBookTitle_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                  </td>
                  <td style="height: 30px; width: 156px">
                      <asp:Label ID="author_nameLbl" runat="server" CssClass="infoLabel" Text="Enter Author Name:"></asp:Label>
                  </td>
                  <td style="height: 30px">
    <asp:DropDownList ID="drpAuthor" runat="server" CssClass="infoDrop" OnSelectedIndexChanged="drpAuthor_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
   
                  </td>
              </tr>
          </table>
   
        <br />
        <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="EbookId" CellPadding="4" ForeColor="#333333" GridLines="None"  AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
         
         <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
         <Columns>
            <asp:BoundField DataField="EbookTitle" HeaderText="EbookTitle" 
                SortExpression="EbookTitle" />
                  <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Download" />
                       <asp:ButtonField ButtonType="Button" CommandName="Select" Text="View" />
        </Columns>
    </asp:GridView>
              </ContentTemplate>
     </asp:UpdatePanel>
        <br />
        
    </asp:Content>