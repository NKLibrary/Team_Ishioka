<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationListView.aspx.cs" Inherits="VirtualCollege.View.ReservationListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Reservation List:<br />
        <asp:GridView ID="gvReservtions" runat="server" OnDataBound="gvReservtions_DataBound" OnRowEditing="gvReservtions_RowEditing">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" OnClientClick="return confirm('Are you sure to cancel this reservation?')">Cancel</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
