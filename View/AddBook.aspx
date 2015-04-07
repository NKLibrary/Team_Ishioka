<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="VirtualCollege.View.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 39%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 210px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
            width: 210px;
            text-align: right;
        }
        #TextArea1 {
            height: 41px;
            width: 330px;
        }
        #txtDesciption {
            width: 312px;
        }
        .auto-style5 {
            width: 210px;
            text-align: right;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Add New Book:
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Book Title</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Author</td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Publisher</td>
                <td>
                    <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Category </td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">PublishedYear </td>
                <td>
                    <asp:Calendar ID="calPublish" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;TotalPages&nbsp; </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPages" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">ISBN </td>
                <td>
                    <asp:TextBox ID="txtIsbn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Description </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Height="43px" TextMode="MultiLine" Width="291px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">ThumbnailPicture</td>
                <td>
                    <asp:FileUpload ID="fuPicture" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">AvailableCopies </td>
                <td>
                    <asp:TextBox ID="txtCopies" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Status</td>
                <td>
                    <asp:RadioButton ID="rbtnAvailable" runat="server" Text="Available" GroupName="status" />
                    <asp:RadioButton ID="rbtnNa" runat="server" Text="NA" GroupName="status" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnAdd" runat="server" Text="Add Book" OnClick="btnAdd_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
