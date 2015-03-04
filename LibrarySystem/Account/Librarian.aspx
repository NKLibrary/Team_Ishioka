<%@ Page Title="Librarian" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Librarian.aspx.cs" Inherits="VirtualCollege.Account.Librarian" %>



<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">

<style>

#lib_leftnav
{
    line-height:30px;
    background-color:#eeeeee;
    height:auto;
    width:auto;
    float:left;

    	      
}
#lib_rightnav {
    width:auto;
    height:auto;
    float:inherit;
    padding:10px;	 	 
}

</style>

<div id="lib_leftnav">
 <asp:Button Text="Manage Inventory" ID="btnManageInventory" runat="server"  />
    <br />
    <asp:Button Text="Manage Users" ID="btnManageUsers" runat="server" />
    
<br />
    <asp:Button Text="Change Password" ID="btnChangePassword" runat="server" />
    
<br />
    <asp:Button Text="Check Reserved Items" ID="btnCheck" runat="server" />
    
<br />
    <asp:Button Text="Due Payments" ID="btnDuePayments" runat="server" />
<br />
    <asp:Button Text="Update Account" ID="btnUpdateAccount" runat="server" />
    
    </div>

    <div id="lib_rightnav">
        <asp:Button Text="Add" ID="btnAdd" runat="server" />
      &nbsp;&nbsp;&nbsp;  <asp:Button Text="Remove" ID="btnRemove" runat="server" />
        <br /><br />

<%--        <asp:DetailsView runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="BookId" DataSourceID="Librarian_SQLDataSource1" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" >
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
                <asp:BoundField DataField="TotalPages" HeaderText="TotalPages" SortExpression="TotalPages" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="AvailableCopies" HeaderText="AvailableCopies" SortExpression="AvailableCopies" />
                <asp:BoundField DataField="BookId" HeaderText="BookId" InsertVisible="False" ReadOnly="True" SortExpression="BookId" />
                <asp:ButtonField CommandName="Insert" HeaderText="Add" Text="Add" />
                <asp:ButtonField CommandName="Delete" HeaderText="Remove" Text="Remove" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />

        </asp:DetailsView>--%>

        <asp:GridView runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BookId" DataSourceID="Librarian_SQLDataSource1" >
            
            <PagerSettings mode="NumericFirstLast" Position="TopAndBottom" PageButtonCount="5"/>

            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="BookId" HeaderText="BookId" InsertVisible="False" ReadOnly="True" SortExpression="BookId" />
                <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
                <asp:BoundField DataField="TotalPages" HeaderText="TotalPages" SortExpression="TotalPages" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="AvailableCopies" HeaderText="AvailableCopies" SortExpression="AvailableCopies" />
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

        <asp:SqlDataSource ID="Librarian_SQLDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryDB_ConnectionString %>" SelectCommand="SELECT [BookTitle], [TotalPages], [Status], [AvailableCopies], [BookId] FROM [Book]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Book] WHERE [BookId] = @original_BookId AND [BookTitle] = @original_BookTitle AND [TotalPages] = @original_TotalPages AND [Status] = @original_Status AND [AvailableCopies] = @original_AvailableCopies" InsertCommand="INSERT INTO [Book] ([BookTitle], [TotalPages], [Status], [AvailableCopies]) VALUES (@BookTitle, @TotalPages, @Status, @AvailableCopies)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Book] SET [BookTitle] = @BookTitle, [TotalPages] = @TotalPages, [Status] = @Status, [AvailableCopies] = @AvailableCopies WHERE [BookId] = @original_BookId AND [BookTitle] = @original_BookTitle AND [TotalPages] = @original_TotalPages AND [Status] = @original_Status AND [AvailableCopies] = @original_AvailableCopies">
            <DeleteParameters>
                <asp:Parameter Name="original_BookId" Type="Int32" />
                <asp:Parameter Name="original_BookTitle" Type="String" />
                <asp:Parameter Name="original_TotalPages" Type="Int32" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_AvailableCopies" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BookTitle" Type="String" />
                <asp:Parameter Name="TotalPages" Type="Int32" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="AvailableCopies" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BookTitle" Type="String" />
                <asp:Parameter Name="TotalPages" Type="Int32" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="AvailableCopies" Type="Int32" />
                <asp:Parameter Name="original_BookId" Type="Int32" />
                <asp:Parameter Name="original_BookTitle" Type="String" />
                <asp:Parameter Name="original_TotalPages" Type="Int32" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_AvailableCopies" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
<br />
              
         
        <br />
        <br />
              
         
    </div>
     <br /><br />
  
</asp:Content>


