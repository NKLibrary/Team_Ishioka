<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditDiscView.aspx.cs" Inherits="VirtualCollege.View.EditDiscView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
        }
        .auto-style2 {
            width: 201px;
            text-align: right;
        }
        .auto-style3 {
            width: 201px;
            height: 23px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Edit Disc<br />
        <asp:HiddenField ID="txtId" runat="server" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">DiscTitle</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTitle" ErrorMessage="Title is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Artist</td>
                <td>
                    <asp:TextBox ID="txtArtist" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Artist is required" ControlToValidate="txtArtist"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Director</td>
                <td>
                    <asp:TextBox ID="txtDirector" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Director is required" ControlToValidate="txtDirector"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Distributor</td>
                <td>
                    <asp:TextBox ID="txtDistribuor" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Distributor is required" ControlToValidate="txtDistribuor"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ReleaseDate</td>
                <td>
                    <asp:Calendar ID="calRelease" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Language</td>
                <td>
                    <asp:TextBox ID="txtLanguage" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="language is required" ControlToValidate="txtDirector"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Subtitle</td>
                <td>
                    <asp:TextBox ID="txtSubtitle" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="subtitle is required" ControlToValidate="txtDirector"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Category</td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="category is required" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Description</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="description is required" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Duration</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="duration is required" ControlToValidate="txtDuration"></asp:RequiredFieldValidator>
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
                    <asp:RadioButton ID="rbtnAvailable" runat="server" Text="Available" GroupNames="status" />
                    <asp:RadioButton ID="rbtnNa" runat="server" Text="NA" GroupNames="status" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnEdit" runat="server" Text="Update Disc" OnClick="btnEdit_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
