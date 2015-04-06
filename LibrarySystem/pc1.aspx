<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="pc1.aspx.cs" Inherits="VirtualCollege.pc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Main_Content" runat="server">
     <h4 style="padding-top:40px"> You can reserve a PC here</h4>
        <div style="position:relative; left:30%;">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PCId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="reserve_pc" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="PCId" HeaderText="PCId" InsertVisible="False" ReadOnly="True" SortExpression="PCId" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:TemplateField HeaderText="Reserve">
<ItemTemplate>
<asp:ImageButton ID="imageButtonreserve" ImageUrl="~/img/reserve-button.png" OnClientClick="javascript:return alert('you have successfully reserved the room');" AlternateText="reserve" CommandName="reserve" runat="server" />
</ItemTemplate>
</asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString%>" SelectCommand="SELECT * FROM [PC]"></asp:SqlDataSource>

            </div>
</asp:Content>
