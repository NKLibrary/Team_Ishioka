<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ebookdetails.aspx.cs" Inherits="VirtualCollege.ebookdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <span style="font-size: large">EBook Title:</span>
        <asp:Label ID="lbltitle" runat="server" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
    </p>
    <table class="nav-justified">
        <tr>
            <td style="width: 141px">Author:</td>
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
            <td style="width: 141px; height: 24px">Category</td>
            <td style="height: 24px">
                <asp:TextBox ID="txtcategory" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Year of Publishing</td>
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
                <asp:TextBox ID="txtstatus" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>

</asp:Content>
