<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="pcdetails.aspx.cs" Inherits="VirtualCollege.pcdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Main_Content" runat="server">
 
    <h3 style="text-decoration: underline"><strong>PC Details</strong></h3>
    <br />
    <table class="nav-justified">
        <tr>
            <td style="width: 115px">PC ID : <asp:Label ID="lblid" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;Status:
                <asp:TextBox ID="txtstatus" runat="server" ReadOnly="True"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button Text="Reserve" runat="server" ID="btnReservePC" OnClick="btnReservePC_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
