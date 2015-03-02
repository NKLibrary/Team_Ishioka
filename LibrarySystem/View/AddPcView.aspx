<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPcView.aspx.cs" Inherits="VirtualCollege.View.AddPcView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 151px;
            text-align: right;
        }
        .auto-style4 {
            width: 151px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Add New PC<br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">PC Status</td>
                <td class="auto-style2">
                    <asp:RadioButton ID="rbtnAvailable" runat="server" GroupName="status" Text="Available" />
                    <asp:RadioButton ID="rbtnNa" runat="server" Checked="True" GroupName="status" Text="NA" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add PC" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
