<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookListView.aspx.cs" Inherits="VirtualCollege.View.BookListView" %>

    <asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
    
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>BookListView</h4>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="BookId" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <li style="background-color: #FAFAD2;color: #284775;">BookId:
                    <asp:Label ID="BookIdLabel" runat="server" Text='<%# Eval("BookId") %>' />
                    <br />
                    BookTitle:
                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                    <br />
                    Author:
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    <br />
                    Publisher:
                    <asp:Label ID="PublisherLabel" runat="server" Text='<%# Eval("Publisher") %>' />
                    <br />
                    Category:
                    <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                    <br />
                    PublishedYear:
                    <asp:Label ID="PublishedYearLabel" runat="server" Text='<%# Eval("PublishedYear") %>' />
                    <br />
                    TotalPages:
                    <asp:Label ID="TotalPagesLabel" runat="server" Text='<%# Eval("TotalPages") %>' />
                    <br />
                    ISBN:
                    <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    ThumbnailPicture:
                    <asp:Label ID="ThumbnailPictureLabel" runat="server" Text='<%# Eval("ThumbnailPicture") %>' />
                    <br />
                    AvailableCopies:
                    <asp:Label ID="AvailableCopiesLabel" runat="server" Text='<%# Eval("AvailableCopies") %>' />
                    <br />
                    Status:
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #FFCC66;color: #000080;">BookId:
                    <asp:Label ID="BookIdLabel1" runat="server" Text='<%# Eval("BookId") %>' />
                    <br />
                    BookTitle:
                    <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                    <br />
                    Author:
                    <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    <br />
                    Publisher:
                    <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
                    <br />
                    Category:
                    <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                    <br />
                    PublishedYear:
                    <asp:TextBox ID="PublishedYearTextBox" runat="server" Text='<%# Bind("PublishedYear") %>' />
                    <br />
                    TotalPages:
                    <asp:TextBox ID="TotalPagesTextBox" runat="server" Text='<%# Bind("TotalPages") %>' />
                    <br />
                    ISBN:
                    <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    ThumbnailPicture:
                    <asp:TextBox ID="ThumbnailPictureTextBox" runat="server" Text='<%# Bind("ThumbnailPicture") %>' />
                    <br />
                    AvailableCopies:
                    <asp:TextBox ID="AvailableCopiesTextBox" runat="server" Text='<%# Bind("AvailableCopies") %>' />
                    <br />
                    Status:
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">BookTitle:
                    <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                    <br />Author:
                    <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    <br />Publisher:
                    <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
                    <br />Category:
                    <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                    <br />PublishedYear:
                    <asp:TextBox ID="PublishedYearTextBox" runat="server" Text='<%# Bind("PublishedYear") %>' />
                    <br />TotalPages:
                    <asp:TextBox ID="TotalPagesTextBox" runat="server" Text='<%# Bind("TotalPages") %>' />
                    <br />ISBN:
                    <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                    <br />Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />ThumbnailPicture:
                    <asp:TextBox ID="ThumbnailPictureTextBox" runat="server" Text='<%# Bind("ThumbnailPicture") %>' />
                    <br />AvailableCopies:
                    <asp:TextBox ID="AvailableCopiesTextBox" runat="server" Text='<%# Bind("AvailableCopies") %>' />
                    <br />Status:
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #FFFBD6;color: #333333;">BookId:
                    <asp:Label ID="BookIdLabel" runat="server" Text='<%# Eval("BookId") %>' />
                    <br />
                    BookTitle:
                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                    <br />
                    Author:
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    <br />
                    Publisher:
                    <asp:Label ID="PublisherLabel" runat="server" Text='<%# Eval("Publisher") %>' />
                    <br />
                    Category:
                    <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                    <br />
                    PublishedYear:
                    <asp:Label ID="PublishedYearLabel" runat="server" Text='<%# Eval("PublishedYear") %>' />
                    <br />
                    TotalPages:
                    <asp:Label ID="TotalPagesLabel" runat="server" Text='<%# Eval("TotalPages") %>' />
                    <br />
                    ISBN:
                    <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    ThumbnailPicture:
                    <asp:Label ID="ThumbnailPictureLabel" runat="server" Text='<%# Eval("ThumbnailPicture") %>' />
                    <br />
                    AvailableCopies:
                    <asp:Label ID="AvailableCopiesLabel" runat="server" Text='<%# Eval("AvailableCopies") %>' />
                    <br />
                    Status:
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">BookId:
                    <asp:Label ID="BookIdLabel" runat="server" Text='<%# Eval("BookId") %>' />
                    <br />
                    BookTitle:
                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                    <br />
                    Author:
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    <br />
                    Publisher:
                    <asp:Label ID="PublisherLabel" runat="server" Text='<%# Eval("Publisher") %>' />
                    <br />
                    Category:
                    <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                    <br />
                    PublishedYear:
                    <asp:Label ID="PublishedYearLabel" runat="server" Text='<%# Eval("PublishedYear") %>' />
                    <br />
                    TotalPages:
                    <asp:Label ID="TotalPagesLabel" runat="server" Text='<%# Eval("TotalPages") %>' />
                    <br />
                    ISBN:
                    <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    ThumbnailPicture:
                    <asp:Label ID="ThumbnailPictureLabel" runat="server" Text='<%# Eval("ThumbnailPicture") %>' />
                    <br />
                    AvailableCopies:
                    <asp:Label ID="AvailableCopiesLabel" runat="server" Text='<%# Eval("AvailableCopies") %>' />
                    <br />
                    Status:
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryDBConnectionString %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
        </p></div>

</asp:Content>

