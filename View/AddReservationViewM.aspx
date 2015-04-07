<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Member.Master" AutoEventWireup="true" CodeBehind="AddReservationViewM.aspx.cs" Inherits="VirtualCollege.View.AddReservationViewM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Member_Content" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Expire date(I do not need this item after):"></asp:Label>
    <asp:Calendar ID="calExpireDate" runat="server"></asp:Calendar>
    <asp:CustomValidator ID="valCalendar" runat="server" EnableClientScript="False" ErrorMessage="Expire date is required" OnServerValidate="valCalendar_ServerValidate" ForeColor="Red"></asp:CustomValidator>
    <asp:CustomValidator ID="valCompareValidator" runat="server" Display="Dynamic" EnableClientScript="False" ErrorMessage="Expire Date should be later than today." ForeColor="Red" OnServerValidate="valCompareValidator_ServerValidate"></asp:CustomValidator>
    <asp:Label ID="lblReserveStatus" runat="server"></asp:Label>

    <br />
    <asp:Button ID="btnReserve" runat="server" OnClick="btnReserve_Click" Text="Reserve Now" />

<br />

</asp:Content>
