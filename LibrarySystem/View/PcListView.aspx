<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PcListView.aspx.cs" Inherits="VirtualCollege.View.PcListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Pc List<br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add PC" />
        <br />
        <asp:GridView ID="gvPc" runat="server" OnRowDeleting="gvPc_RowDeleting" OnRowEditing="gvPc_RowEditing">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure to Delete?');">Delete</asp:LinkButton>
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
