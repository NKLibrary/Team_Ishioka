<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBookView.aspx.cs" Inherits="VirtualCollege.View.EditBookView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style9 {
            width: 187px;
            text-align: right;
        }
        .auto-style10 {
            width: 187px;
            text-align: right;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Edit Book:<br />
&nbsp;<table style="width: 463px">
            <tr>
                <td class="auto-style9">Book Id</td>
                <td>
                    <asp:Label ID="lblBookId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Book Title </td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Author </td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Publisher </td>
                <td>
                    <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Category </td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">PublishedYear </td>
                <td>
                    <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                    <asp:Calendar ID="calPublish" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">TotalPages </td>
                <td>
                    <asp:TextBox ID="txtPage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">ISBN </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtIsdn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Description </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Height="58px" TextMode="MultiLine" Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">ThumbnailPicture </td>
                <td>
                    <asp:FileUpload ID="fuPicture" runat="server" />
                    <br />
                    <asp:Image ID="Image1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">AvailableCopies </td>
                <td>
                    <asp:TextBox ID="txtCopies" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Status</td>
                <td>
                    <asp:RadioButton ID="rbtnAvailable" runat="server" Text="Available" GroupName="status"  />
                    <asp:RadioButton ID="rbtNa" runat="server" Text="NA" GroupName="status" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnEdit" runat="server" Text="Edit Book" OnClick="btnEdit_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
