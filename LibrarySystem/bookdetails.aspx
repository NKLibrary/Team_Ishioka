<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bookdetails.aspx.cs" Inherits="VirtualCollege.bookdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h4>Book Title:
        <asp:Label ID="lbltitle" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
    </h4>
    <table class="nav-justified">
        <tr>
            <td style="width: 141px">Author</td>
            <td>
                <asp:TextBox ID="txtauthor" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Publisher</td>
            <td>
                <asp:TextBox ID="txtpublisher" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Category</td>
            <td>
                <asp:TextBox ID="txtcategory" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Published Year</td>
            <td>
                <asp:TextBox ID="txtyear" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Pages</td>
            <td>
                <asp:TextBox ID="txtpages" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">ISBN</td>
            <td>
                <asp:TextBox ID="txtISBN" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Description</td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Status</td>
            <td>
                <asp:TextBox ID="txtstatus" runat="server" Height="22px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>

</asp:Content>
