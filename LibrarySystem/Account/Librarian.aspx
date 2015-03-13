<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Librarian.Master" AutoEventWireup="true" CodeBehind="Librarian.aspx.cs" Inherits="VirtualCollege.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Librarian_Content" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BookId" DataSourceID="SqlDataSource1">
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
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryDB_ConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookId] = @BookId" InsertCommand="INSERT INTO [Book] ([BookTitle], [Author], [Publisher], [Category], [PublishedYear], [TotalPages], [ISBN], [Description], [ThumbnailPicture], [AvailableCopies], [Status]) VALUES (@BookTitle, @Author, @Publisher, @Category, @PublishedYear, @TotalPages, @ISBN, @Description, @ThumbnailPicture, @AvailableCopies, @Status)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookTitle] = @BookTitle, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [PublishedYear] = @PublishedYear, [TotalPages] = @TotalPages, [ISBN] = @ISBN, [Description] = @Description, [ThumbnailPicture] = @ThumbnailPicture, [AvailableCopies] = @AvailableCopies, [Status] = @Status WHERE [BookId] = @BookId">
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
