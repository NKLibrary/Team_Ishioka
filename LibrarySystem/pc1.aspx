<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="pc1.aspx.cs" Inherits="VirtualCollege.pc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Main_Content" runat="server">
     <h4 style="padding-top:40px"> You can reserve a PC here</h4>
        <div style="position:relative; left:30%;">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" DataKeyNames="PCId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="reserve_pc">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="PCId" HeaderText="PCId" InsertVisible="False" ReadOnly="True" SortExpression="PCId" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:TemplateField HeaderText="Reserve">
<ItemTemplate>
<asp:ImageButton ID="imageButtonreserve" ImageUrl="~/img/reserve-button.png" OnClientClick="javascript:return alert('you have successfully reserved the room');" AlternateText="reserve" CommandName="reserve" runat="server" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [PC]"></asp:SqlDataSource>

            </div>
</asp:Content>
