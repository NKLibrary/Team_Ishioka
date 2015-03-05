<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDiscView.aspx.cs" Inherits="VirtualCollege.View.AddDiscView" %>
<%@ Register TagPrefix="Custom" Namespace="VirtualCollege.View.Controls" Assembly="VirtualCollege" %>
<asp:Content>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 47%;
        }
        .auto-style2 {
            width: 258px;
            text-align: right;
        }
        .auto-style3 {
            width: 258px;
            text-align: right;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 258px;
            text-align: right;
            height: 211px;
        }
        .auto-style6 {
            height: 211px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Add New Disc<br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">DiscTitle</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Artist</td>
                <td>
                    <asp:TextBox ID="txtArtist" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Director</td>
                <td>
                    <asp:TextBox ID="txtDirector" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Distributor</td>
                <td>
                    <asp:TextBox ID="txtDistributor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">ReleaseDate</td>
                <td class="auto-style6">
                    <Custom:VCalendar id="calRelease" runat="server"></Custom:VCalendar>
                    <asp:CustomValidator ID="calReleaseValidator" runat="server" ControlToValidate="calRelease" EnableClientScript="False" ErrorMessage="Release date is required" OnServerValidate="calReleaseValidator_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Language</td>
                <td>
                    <asp:TextBox ID="txtLanguage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Subtitle</td>
                <td>
                    <asp:TextBox ID="txtSubsitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Category</td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Description</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Duration</td>
                <td>
                    <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">ThumbnailPicture</td>
                <td class="auto-style4">
                    <asp:FileUpload ID="fuPicture" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Status</td>
                <td>
                    <asp:RadioButton ID="rbtnAvailable" runat="server" Text="Available" GroupName="status" />
                    <asp:RadioButton ID="rbtnNa" runat="server" Text="NA" GroupName="status" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnDisc" runat="server" Text="Add Disc" OnClick="btnDisc_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
