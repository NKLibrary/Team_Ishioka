<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="dvddetails.aspx.cs" Inherits="VirtualCollege.dvddetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Main_Content" runat="server">

    <h4>
        <asp:Label ID="lbltitle" runat="server" Text="Label"></asp:Label>
    </h4>
    <table class="nav-justified">
        <tr>
            <td style="width: 141px; height: 22px">Artist</td>
            <td style="height: 22px">
                <asp:TextBox ID="lblartist" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Director</td>
            <td>
                <asp:TextBox ID="lbldirector" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">DIstributor</td>
            <td>
                <asp:TextBox ID="lbldist" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Release Date</td>
            <td>
                <asp:TextBox ID="lblrelease" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Category</td>
            <td>
                <asp:TextBox ID="lblcategory" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Description</td>
            <td>
                <asp:TextBox ID="lbldesc" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Duratoin</td>
            <td>
                <asp:TextBox ID="lblduration" runat="server" ReadOnly="True" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 141px">Status</td>
            <td>
                <asp:TextBox ID="lblstatus" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>


</asp:Content>
