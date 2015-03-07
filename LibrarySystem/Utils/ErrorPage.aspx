<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="VirtualCollege.Utils.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblErrorMessage" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="btnReturn" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>
