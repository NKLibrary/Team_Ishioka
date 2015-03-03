<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiscListView.aspx.cs" Inherits="VirtualCollege.View.DiscListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/ManageStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header></header>
    <div>
    
        Disc List<br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Disc" />
        <br />
        <asp:GridView ID="gvDisc" runat="server" OnRowDeleting="gvDisc_RowDeleting" OnRowEditing="gvDisc_RowEditing">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure to delete?')">Delete</asp:LinkButton>
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
