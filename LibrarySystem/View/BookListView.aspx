<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookListView.aspx.cs" Inherits="VirtualCollege.View.BookListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<asp:Label ID="lblBookType" runat="server" Text="Label"></asp:Label>
&nbsp;List<br />
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add New Book" />

            <asp:GridView ID="grdBook" runat="server" OnRowDeleting="grdBook_RowDeleting" OnRowEditing="grdBook_RowEditing">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("BookTitle") %>' CommandName="Delete" OnClientClick="return confirm('Are you sure to delete?')">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
