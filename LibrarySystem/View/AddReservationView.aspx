<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddReservationView.aspx.cs" Inherits="VirtualCollege.View.AddReservationView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Calendar ID="calExpireDate" runat="server"></asp:Calendar>
        <asp:Label ID="lblReserveStatus" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnReserve" runat="server" Text="Reserve Now" />
        
    </div>
    </form>
</body>
</html>
