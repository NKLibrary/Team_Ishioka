<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPcView.aspx.cs" Inherits="VirtualCollege.View.EditPcView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 35%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 124px;
            text-align: right;
        }
        .auto-style4 {
            width: 124px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Edit PC<asp:HiddenField ID="hfPcId" runat="server" />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">PC Status</td>
                <td class="auto-style2">
                    <asp:RadioButton ID="rbtnAvailable" runat="server" GroupName="status" Text="Available" />
                    <asp:RadioButton ID="rbtnNa" runat="server" GroupName="status" Text="NA" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update PC" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
