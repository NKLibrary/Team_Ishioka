<%@ Page Language="C#" MasterPageFile="~/Master_Librarian.master" AutoEventWireup="true" CodeBehind="EbookListView.aspx.cs" Inherits="VirtualCollege.View.EbookListView" %>

 <asp:Content runat="server" ID="Content1" ContentPlaceHolderID="Master_Librarian_Content">
     <h2>EbookView</h2>
     <p>&nbsp;</p>
     <asp:GridView ID="EbookGridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EbookId" DataSourceID="SqlDataSource1" ShowFooter="True" AllowSorting="True">
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
             <asp:BoundField DataField="EbookId" HeaderText="EbookId" InsertVisible="False" ReadOnly="True" SortExpression="EbookId" />
             <asp:BoundField DataField="EbookTitle" HeaderText="EbookTitle" SortExpression="EbookTitle" />
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
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Ebook] WHERE [EbookId] = @EbookId" InsertCommand="INSERT INTO [Ebook] ([EbookTitle], [Author], [Publisher], [Category], [PublishedYear], [TotalPages], [ISBN], [Description], [ThumbnailPicture], [AvailableCopies], [Status]) VALUES (@EbookTitle, @Author, @Publisher, @Category, @PublishedYear, @TotalPages, @ISBN, @Description, @ThumbnailPicture, @AvailableCopies, @Status)" SelectCommand="SELECT * FROM [Ebook]" UpdateCommand="UPDATE [Ebook] SET [EbookTitle] = @EbookTitle, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [PublishedYear] = @PublishedYear, [TotalPages] = @TotalPages, [ISBN] = @ISBN, [Description] = @Description, [ThumbnailPicture] = @ThumbnailPicture, [AvailableCopies] = @AvailableCopies, [Status] = @Status WHERE [EbookId] = @EbookId">
         <DeleteParameters>
             <asp:Parameter Name="EbookId" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="EbookTitle" Type="String" />
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
             <asp:Parameter Name="EbookTitle" Type="String" />
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
             <asp:Parameter Name="EbookId" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>


</asp:Content>

