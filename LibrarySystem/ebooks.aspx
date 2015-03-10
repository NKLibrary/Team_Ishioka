<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ebooks.aspx.cs" Inherits="VirtualCollege.Ebooks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
          <br />
        <br />
          <br />
          Welcome to Ebooks page!
        <br />
          &nbsp;&nbsp;<br />
          <table style="width: 100%">
              <tr>
                  <td style="width: 182px">
                      <asp:Label ID="ebook_titleLbl" CssClass ="infoLabel" runat="server" Text="Enter Ebook Title:" Width="158px"></asp:Label>
                  </td>
                  <td style="width: 225px"><asp:DropDownList ID="drpBookTitle" runat="server" OnSelectedIndexChanged="drpBookTitle_SelectedIndexChanged" AutoPostBack="True" style="margin-left: 0px"></asp:DropDownList>
                  </td>
                  <td style="width: 181px">
                      <asp:Label ID="author_nameLbl" runat="server" CssClass ="infoLabel" Text="Enter Author Name:" Width="155px"></asp:Label>
                  </td>
                  <td>
    <asp:DropDownList ID="drpAuthor" runat="server" OnSelectedIndexChanged="drpAuthor_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
   
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