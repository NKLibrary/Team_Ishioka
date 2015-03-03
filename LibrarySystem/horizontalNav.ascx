<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="horizontalNav.ascx.cs" Inherits="VirtualCollege.horizontalNav" %>
<div class="menuWrapper">

    <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" Font-Bold="True" CssClass="Menu horiMenu">

        <Items>
            <asp:MenuItem NavigateUrl="~/home.aspx" Text="Home" Value="New Item">
            </asp:MenuItem>

            <asp:MenuItem NavigateUrl="~/books.aspx" Text="Books" Value="New Item">
            </asp:MenuItem>

            <asp:MenuItem NavigateUrl="~/ebooks.aspx" Text="Ebooks" Value="New Item">
            </asp:MenuItem>

            
            <asp:MenuItem NavigateUrl="~/pc.aspx" Text="PC's" Value="New Item">
            </asp:MenuItem>
            
            <asp:MenuItem NavigateUrl="~/dvd.aspx" Text="DVD/CD" Value="New Item">
            </asp:MenuItem>
          
     </Items></asp:Menu>

</div>