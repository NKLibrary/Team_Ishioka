<%@ Page Language="C#"MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="DVDListView.aspx.cs" Inherits="VirtualCollege.View.Controls.DVDListView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        DVDListView:</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DiscId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="DiscId" HeaderText="DiscId" InsertVisible="False" ReadOnly="True" SortExpression="DiscId" />
                <asp:BoundField DataField="DiscTitle" HeaderText="DiscTitle" SortExpression="DiscTitle" />
                <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
                <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                <asp:BoundField DataField="Distributor" HeaderText="Distributor" SortExpression="Distributor" />
                <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
                <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
                <asp:BoundField DataField="Subtitle" HeaderText="Subtitle" SortExpression="Subtitle" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="ThumbnailPicture" HeaderText="ThumbnailPicture" SortExpression="ThumbnailPicture" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Disc] WHERE [DiscId] = @DiscId" InsertCommand="INSERT INTO [Disc] ([DiscTitle], [Artist], [Director], [Distributor], [ReleaseDate], [Language], [Subtitle], [Category], [Description], [Duration], [Status], [ThumbnailPicture]) VALUES (@DiscTitle, @Artist, @Director, @Distributor, @ReleaseDate, @Language, @Subtitle, @Category, @Description, @Duration, @Status, @ThumbnailPicture)" SelectCommand="SELECT * FROM [Disc]" UpdateCommand="UPDATE [Disc] SET [DiscTitle] = @DiscTitle, [Artist] = @Artist, [Director] = @Director, [Distributor] = @Distributor, [ReleaseDate] = @ReleaseDate, [Language] = @Language, [Subtitle] = @Subtitle, [Category] = @Category, [Description] = @Description, [Duration] = @Duration, [Status] = @Status, [ThumbnailPicture] = @ThumbnailPicture WHERE [DiscId] = @DiscId">
            <DeleteParameters>
                <asp:Parameter Name="DiscId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DiscTitle" Type="String" />
                <asp:Parameter Name="Artist" Type="String" />
                <asp:Parameter Name="Director" Type="String" />
                <asp:Parameter Name="Distributor" Type="String" />
                <asp:Parameter Name="ReleaseDate" Type="DateTime" />
                <asp:Parameter Name="Language" Type="String" />
                <asp:Parameter Name="Subtitle" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Duration" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="ThumbnailPicture" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DiscTitle" Type="String" />
                <asp:Parameter Name="Artist" Type="String" />
                <asp:Parameter Name="Director" Type="String" />
                <asp:Parameter Name="Distributor" Type="String" />
                <asp:Parameter Name="ReleaseDate" Type="DateTime" />
                <asp:Parameter Name="Language" Type="String" />
                <asp:Parameter Name="Subtitle" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Duration" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="ThumbnailPicture" Type="String" />
                <asp:Parameter Name="DiscId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>