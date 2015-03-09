<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddReservationView.aspx.cs" Inherits="VirtualCollege.View.AddReservationView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="Label1" runat="server" Text="Expire date(I do not need this item after):"></asp:Label>
        <asp:Calendar ID="calExpireDate" runat="server"></asp:Calendar>
        <asp:CustomValidator ID="valCalendar" runat="server" EnableClientScript="False" ErrorMessage="Expire date is required" OnServerValidate="valCalendar_ServerValidate"></asp:CustomValidator>
        <asp:Label ID="lblReserveStatus" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnReserve" runat="server" Text="Reserve Now" OnClick="btnReserve_Click" />
        
    </div>
    </form>
</body>
</html>
