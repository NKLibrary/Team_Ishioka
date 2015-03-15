<%@ Page Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="VirtualCollege.Books" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="Master_Main_Content" runat="server">
    <!DOCTYPE html>

<html>

<body>
    <form id="form1" >
    <div>
   
        <br />
          <br />
        <br />
     Welcome to Books page!
        <br />
    &nbsp;&nbsp;<br />
        <table style="width: 100%">
            <tr>
                <td style="width: 466px">
                    <asp:Label ID="book_titleLbl" runat="server" Text="Enter Book Title:"></asp:Label>
&nbsp;<asp:DropDownList ID="drpBookTitle" runat="server" OnSelectedIndexChanged="drpBookTitle_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="author_nameLbl" runat="server" Text="Enter Author Name:"></asp:Label>
&nbsp;<asp:DropDownList ID="drpAuthor" runat="server" OnSelectedIndexChanged="drpAuthor_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
   
                </td>
            </tr>
        </table>
   
        <br />
        <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="BookId" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                                  <asp:ButtonField ButtonType="Button" CommandName="Select" Text="View" />
                         </Columns>
                    </asp:GridView>
            </ContentTemplate>
     </asp:UpdatePanel>
        <br />
    </form>
</body>
</html>
</asp:Content>