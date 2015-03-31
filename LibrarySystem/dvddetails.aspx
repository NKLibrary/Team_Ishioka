<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="dvddetails.aspx.cs" Inherits="VirtualCollege.dvddetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Main_Content" runat="server">
    <link href="css/menu.css" rel="stylesheet" />
    <h4>
        <asp:Label ID="lbltitle" runat="server" Text="Label"></asp:Label>
    </h4>
    <table class="nav-justified">
        <tr>
            <td style="width: 141px; height: 22px"><asp:Label ID="Label1"  CssClass="infoLabel" runat="server" Text="Artist" Width="105px" Height="16px"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="lblartist" runat="server" CssClass="textContact" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label2"  CssClass="infoLabel" runat="server" Text="Director" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lbldirector" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label3"  CssClass="infoLabel" runat="server" Text="Distributor" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lbldist" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label4"  CssClass="infoLabel" runat="server" Text="Release Date" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lblrelease" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label5"  CssClass="infoLabel" runat="server" Text="Category" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lblcategory" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label6"  CssClass="infoLabel" runat="server" Text="Description" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lbldesc" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label7"  CssClass="infoLabel" runat="server" Text="Duration" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lblduration" CssClass="textContact" runat="server" ReadOnly="True" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px"><asp:Label ID="Label8"  CssClass="infoLabel" runat="server" Text="Status" Width="105px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lblstatus" CssClass="textContact" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>


</asp:Content>
