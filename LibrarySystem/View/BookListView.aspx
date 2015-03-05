<%@ Page  Title="BookLisView" MasterPageFile="~/Site.Master"  Language="C#" AutoEventWireup="true" CodeBehind="BookListView.aspx.cs" Inherits="VirtualCollege.View.BookListView" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
 <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>BookListView.</h4>
        <hr />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="BookId" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color: #FAFAD2;color: #284775;">
                    <td>
                        <asp:Label ID="BookIdLabel" runat="server" Text='<%# Eval("BookId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PublisherLabel" runat="server" Text='<%# Eval("Publisher") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PublishedYearLabel" runat="server" Text='<%# Eval("PublishedYear") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TotalPagesLabel" runat="server" Text='<%# Eval("TotalPages") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ThumbnailPictureLabel" runat="server" Text='<%# Eval("ThumbnailPicture") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AvailableCopiesLabel" runat="server" Text='<%# Eval("AvailableCopies") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #FFCC66;color: #000080;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="BookIdLabel1" runat="server" Text='<%# Eval("BookId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PublishedYearTextBox" runat="server" Text='<%# Bind("PublishedYear") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TotalPagesTextBox" runat="server" Text='<%# Bind("TotalPages") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ThumbnailPictureTextBox" runat="server" Text='<%# Bind("ThumbnailPicture") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AvailableCopiesTextBox" runat="server" Text='<%# Bind("AvailableCopies") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PublishedYearTextBox" runat="server" Text='<%# Bind("PublishedYear") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TotalPagesTextBox" runat="server" Text='<%# Bind("TotalPages") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ThumbnailPictureTextBox" runat="server" Text='<%# Bind("ThumbnailPicture") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AvailableCopiesTextBox" runat="server" Text='<%# Bind("AvailableCopies") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #FFFBD6;color: #333333;">
                    <td>
                        <asp:Label ID="BookIdLabel" runat="server" Text='<%# Eval("BookId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PublisherLabel" runat="server" Text='<%# Eval("Publisher") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PublishedYearLabel" runat="server" Text='<%# Eval("PublishedYear") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TotalPagesLabel" runat="server" Text='<%# Eval("TotalPages") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ThumbnailPictureLabel" runat="server" Text='<%# Eval("ThumbnailPicture") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AvailableCopiesLabel" runat="server" Text='<%# Eval("AvailableCopies") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                    <th runat="server">BookId</th>
                                    <th runat="server">BookTitle</th>
                                    <th runat="server">Author</th>
                                    <th runat="server">Publisher</th>
                                    <th runat="server">Category</th>
                                    <th runat="server">PublishedYear</th>
                                    <th runat="server">TotalPages</th>
                                    <th runat="server">ISBN</th>
                                    <th runat="server">Description</th>
                                    <th runat="server">ThumbnailPicture</th>
                                    <th runat="server">AvailableCopies</th>
                                    <th runat="server">Status</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                    <td>
                        <asp:Label ID="BookIdLabel" runat="server" Text='<%# Eval("BookId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PublisherLabel" runat="server" Text='<%# Eval("Publisher") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PublishedYearLabel" runat="server" Text='<%# Eval("PublishedYear") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TotalPagesLabel" runat="server" Text='<%# Eval("TotalPages") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ThumbnailPictureLabel" runat="server" Text='<%# Eval("ThumbnailPicture") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AvailableCopiesLabel" runat="server" Text='<%# Eval("AvailableCopies") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryDBConnectionString %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
        <div class="form-group">
        </div>
        <div class="form-group">
            <div class="col-md-10">
               <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
               <%-- <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />--%>
            </div>
        </div>
    </div>





 </asp:Content>