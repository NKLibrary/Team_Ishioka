<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProcessReservationView.aspx.cs" Inherits="VirtualCollege.View.ProcessReservationView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Process Reservation List<br />
        <asp:RadioButton ID="rbtnTodo" runat="server" Checked="True" GroupName="mode" OnCheckedChanged="rbtnTodo_CheckedChanged" Text="Todo" AutoPostBack="True" />
        <asp:RadioButton ID="rbtnHistory" runat="server" GroupName="mode" OnCheckedChanged="rbtnHistory_CheckedChanged" Text="History" AutoPostBack="True" />
        <br />
        <asp:GridView ID="gvReservation" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Process">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server">Process</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
