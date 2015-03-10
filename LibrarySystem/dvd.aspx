<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dvd.aspx.cs" Inherits="VirtualCollege.Dvd" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <br />
        <br />
          <br />
        <br />
      &nbsp;&nbsp;
  <h4 style="padding-top:40px"> You can reserve a DVD or CD here</h4>
        <div style="position:relative; left:1%;">
               &nbsp;&nbsp;<table style="width: 100%">
                   <tr>
                       <td>
                           <asp:Label ID="dvdLbl" CssClass ="infoLabel" runat="server" Text="Enter DVD/CD Title:"></asp:Label>
&nbsp;<asp:DropDownList ID="drpBookTitle" runat="server" OnSelectedIndexChanged="drpBookTitle_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>

                       </td>
                   </tr>
               </table>
               <br />

            <asp:GridView ID="GridView1" runat="server"  CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                         <asp:TemplateField HeaderText="Reserve">
<ItemTemplate>
<asp:Button ID="imageButtonreserve" Text="Reserve" OnClientClick="javascript:return alert('you have successfully reserved the DVD/CD');" AlternateText="reserve" CommandName="reserve" runat="server" />
</ItemTemplate>
</asp:TemplateField>
                
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
          


            </div>
    
    </asp:Content>
