<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="VirtualCollege.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Main_Content" runat="server">
       
    

    <p>
        Room Details</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RoomId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField EditText="Reserve" SelectText="Reserve" ShowSelectButton="True" />
                <asp:BoundField DataField="RoomId" HeaderText="RoomId" InsertVisible="False" ReadOnly="True" SortExpression="RoomId" />
                <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>
        :</p>
       
    

</asp:Content>
