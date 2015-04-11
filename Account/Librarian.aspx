<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Librarian.Master" AutoEventWireup="true" CodeBehind="Librarian.aspx.cs" Inherits="VirtualCollege.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Librarian_Content" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="BookId" HeaderText="BookId" InsertVisible="False" ReadOnly="True" SortExpression="BookId" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="PublishedYear" HeaderText="PublishedYear" SortExpression="PublishedYear" />
            <asp:BoundField DataField="TotalPages" HeaderText="TotalPages" SortExpression="TotalPages" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="ThumbnailPicture" HeaderText="ThumbnailPicture" SortExpression="ThumbnailPicture" />
            <asp:BoundField DataField="AvailableCopies" HeaderText="AvailableCopies" SortExpression="AvailableCopies" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookId] = @BookId" InsertCommand="INSERT INTO [Book] ([BookTitle], [Author], [Publisher], [Category], [PublishedYear], [TotalPages], [ISBN], [Description], [ThumbnailPicture], [AvailableCopies], [Status]) VALUES (@BookTitle, @Author, @Publisher, @Category, @PublishedYear, @TotalPages, @ISBN, @Description, @ThumbnailPicture, @AvailableCopies, @Status)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookTitle] = @BookTitle, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [PublishedYear] = @PublishedYear, [TotalPages] = @TotalPages, [ISBN] = @ISBN, [Description] = @Description, [ThumbnailPicture] = @ThumbnailPicture, [AvailableCopies] = @AvailableCopies, [Status] = @Status WHERE [BookId] = @BookId">
        <DeleteParameters>
            <asp:Parameter Name="BookId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="PublishedYear" Type="DateTime" />
            <asp:Parameter Name="TotalPages" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ThumbnailPicture" Type="String" />
            <asp:Parameter Name="AvailableCopies" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="PublishedYear" Type="DateTime" />
            <asp:Parameter Name="TotalPages" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ThumbnailPicture" Type="String" />
            <asp:Parameter Name="AvailableCopies" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="BookId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
