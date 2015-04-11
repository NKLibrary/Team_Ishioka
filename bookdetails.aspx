<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="bookdetails.aspx.cs" Inherits="VirtualCollege.bookdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Main_Content" runat="server">
   <link href="css/menu.css" rel="stylesheet" />
    <h4>Book Title:
        <asp:Label ID="lbltitle" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
    </h4>
    <table class="nav-justified">
        <tr>
            <td style="width: 141px"><asp:Label ID="Label1"  CssClass="infoLabel" runat="server" Text="Author" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtauthor" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label2"  CssClass="infoLabel" runat="server" Text="Publisher" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpublisher" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label3"  CssClass="infoLabel" runat="server" Text="Category" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcategory" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label4"  CssClass="infoLabel" runat="server" Text="Published Year" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtyear" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label5"  CssClass="infoLabel" runat="server" Text="Pages" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpages" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label6"  CssClass="infoLabel" runat="server" Text="ISBN" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtISBN" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label7"  CssClass="infoLabel" runat="server" Text="Description" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdesc" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label8"  CssClass="infoLabel" runat="server" Text="Status" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstatus" CssClass="textContact" runat="server" Height="22px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>


</asp:Content>
