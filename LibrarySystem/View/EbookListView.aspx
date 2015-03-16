<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EbookListView.aspx.cs" Inherits="VirtualCollege.View.EbookListView" %>

 <asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
     <h2>EbookView</h2>
     <p>&nbsp;</p>
     <asp:GridView ID="EbookGridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EbookId" DataSourceID="SqlDataSource1" ShowFooter="True">
         <Columns>
             <asp:TemplateField ShowHeader="False">
                 <EditItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="EbookId" InsertVisible="False" SortExpression="EbookId">
                 <EditItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("EbookId") %>'></asp:Label>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("EbookId") %>'></asp:Label>
                 </ItemTemplate>
                                                         <FooterTemplate>
                      <asp:LinkButton OnClick="Lbinsert_Click" ID="lbinsertEbook"   runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="EbookTitle" SortExpression="EbookTitle">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EbookTitle") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("EbookTitle") %>'></asp:Label>
                 </ItemTemplate>
                                         <FooterTemplate>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Author" SortExpression="Author">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                 </ItemTemplate>
                                           <FooterTemplate>
                        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Publisher" SortExpression="Publisher">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Publisher") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("Publisher") %>'></asp:Label>
                 </ItemTemplate>
                                       <FooterTemplate>
                        <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Category" SortExpression="Category">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                 </ItemTemplate>
                        <FooterTemplate>
                        <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="PublishedYear" SortExpression="PublishedYear">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PublishedYear") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("PublishedYear") %>'></asp:Label>
                 </ItemTemplate>
                     <FooterTemplate>
                        <asp:TextBox ID="txtPublishYear" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="TotalPages" SortExpression="TotalPages">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("TotalPages") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label7" runat="server" Text='<%# Bind("TotalPages") %>'></asp:Label>
                 </ItemTemplate>
                 
                                                   <FooterTemplate>
                        <asp:TextBox ID="txtTotalpages" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label8" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                 </ItemTemplate>
                     <FooterTemplate>
                        <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Description" SortExpression="Description">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label9" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                 </ItemTemplate>
                  <FooterTemplate>
                        <asp:TextBox ID="Description" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="ThumbnailPicture" SortExpression="ThumbnailPicture">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("ThumbnailPicture") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label10" runat="server" Text='<%# Bind("ThumbnailPicture") %>'></asp:Label>
                 </ItemTemplate>
                 
                                                   <FooterTemplate>
                        <asp:TextBox ID="txtThumbnailPicture" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="AvailableCopies" SortExpression="AvailableCopies">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("AvailableCopies") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label11" runat="server" Text='<%# Bind("AvailableCopies") %>'></asp:Label>
                 </ItemTemplate>
                             <FooterTemplate>
                        <asp:TextBox ID="txtavailablecopys" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Status" SortExpression="Status">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label12" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                 </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
                        </FooterTemplate>
             </asp:TemplateField>
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WeiYanConnection %>" DeleteCommand="DELETE FROM [Ebook] WHERE [EbookId] = @EbookId" InsertCommand="INSERT INTO [Ebook] ([EbookTitle], [Author], [Publisher], [Category], [PublishedYear], [TotalPages], [ISBN], [Description], [ThumbnailPicture], [AvailableCopies], [Status]) VALUES (@EbookTitle, @Author, @Publisher, @Category, @PublishedYear, @TotalPages, @ISBN, @Description, @ThumbnailPicture, @AvailableCopies, @Status)" SelectCommand="SELECT * FROM [Ebook]" UpdateCommand="UPDATE [Ebook] SET [EbookTitle] = @EbookTitle, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [PublishedYear] = @PublishedYear, [TotalPages] = @TotalPages, [ISBN] = @ISBN, [Description] = @Description, [ThumbnailPicture] = @ThumbnailPicture, [AvailableCopies] = @AvailableCopies, [Status] = @Status WHERE [EbookId] = @EbookId">
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

