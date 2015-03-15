<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceReservationSample.aspx.cs" Inherits="VirtualCollege.View.PlaceReservationSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="138px" ImageUrl="~/Images/new1.jpg" Width="132px" />
        <asp:Button ID="btnReserve1" runat="server" OnClick="btnReserve1_Click" Text="Reserve Book" />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="136px" ImageUrl="~/Images/new2.jpg" Width="118px" />
        <asp:Button ID="btnReserve2" runat="server" OnClick="btnReserve2_Click" Text="Reserve DVD" />
        <br />
        <br />
        <asp:Image ID="Image3" runat="server" Height="160px" ImageUrl="~/Images/new3.jpg" Width="132px" />
        <asp:Button ID="btnReserve3" runat="server" OnClick="btnReserve3_Click" Text="Reserve Room" />
    
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
    </div>
    </form>
</body>
</html>
