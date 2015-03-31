<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="ebookdetails.aspx.cs" Inherits="VirtualCollege.ebookdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Main_Content" runat="server">
    <link href="css/menu.css" rel="stylesheet" />
    <p>
        <span style="font-size: large">EBook Title:</span>
        <asp:Label ID="lbltitle" runat="server" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
    </p>
    <table class="nav-justified">
        <tr>
            <td style="width: 154px"><asp:Label ID="Label1"  CssClass="infoLabel" runat="server" Text="Author" Width="113px" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtauthor" runat="server" CssClass="textContact" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px"><asp:Label ID="Label2"  CssClass="infoLabel" runat="server" Text="Publisher" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txtpublisher" runat="server" CssClass="textContact" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 24px"><asp:Label ID="Label3"  CssClass="infoLabel" runat="server" Text="Category" Width="114px" Height="16px"></asp:Label>
                </td>
            <td style="height: 24px">
                <asp:TextBox ID="txtcategory" runat="server" CssClass="textContact" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px"><asp:Label ID="Label4"  CssClass="infoLabel" runat="server" Text="Year of Publishing" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txtyear" runat="server" CssClass="textContact" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px"><asp:Label ID="Label5"  CssClass="infoLabel" runat="server" Text="Pages" Width="114px" Height="16px"></asp:Label>
                </td>

            <td>
                <asp:TextBox ID="txtpages" runat="server" CssClass="textContact"  ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px"><asp:Label ID="Label6"  CssClass="infoLabel" runat="server" Text="ISBN" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txtISBN" runat="server" CssClass="textContact" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px"><asp:Label ID="Label7"  CssClass="infoLabel" runat="server" Text="Description" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" CssClass="textContact" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px"><asp:Label ID="Label8"  CssClass="infoLabel" runat="server" Text="Status" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txtstatus" runat="server" CssClass="textContact" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
