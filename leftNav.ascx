<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="leftNav.ascx.cs" Inherits="VirtualCollege.leftNav" %>

<div class="menuWrapper">

    <asp:Menu ID="Menu1" runat="server" Orientation="Vertical" StaticEnableDefaultPopOutImage="False" Font-Bold="True" CssClass="Menu leftNav">

        <Items>
            
            <asp:MenuItem NavigateUrl="~/reserveItem.aspx" Text="Reserve Item" Value="New Item">
            </asp:MenuItem>

            <asp:MenuItem NavigateUrl="~/paymentHistory.aspx" Text="Payment History" Value="New Item">
            </asp:MenuItem>

            <asp:MenuItem NavigateUrl="~/updateAccount.aspx" Text="Update Account" Value="New Item">
            </asp:MenuItem>

            <asp:MenuItem NavigateUrl="~/itemsIssued.aspx" Text="Items Issued" Value="New Item">
            </asp:MenuItem>
     </Items></asp:Menu>

</div>