<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Manager.Master" AutoEventWireup="true" CodeBehind="Manager_Members.aspx.cs" Inherits="VirtualCollege.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Manager_Content" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="HomePhone" HeaderText="HomePhone" SortExpression="HomePhone" />
        <asp:BoundField DataField="CellPhone" HeaderText="CellPhone" SortExpression="CellPhone" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
        <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" SortExpression="SchoolName" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryDBConnectionString %>" DeleteCommand="DELETE FROM [Member] WHERE [UserId] = @original_UserId AND [Password] = @original_Password AND [FirstName] = @original_FirstName AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND [Address] = @original_Address AND [City] = @original_City AND [Province] = @original_Province AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND (([HomePhone] = @original_HomePhone) OR ([HomePhone] IS NULL AND @original_HomePhone IS NULL)) AND [CellPhone] = @original_CellPhone AND [Email] = @original_Email AND [Student] = @original_Student AND [SchoolName] = @original_SchoolName" InsertCommand="INSERT INTO [Member] ([Password], [FirstName], [MiddleName], [LastName], [Gender], [Address], [City], [Province], [PostalCode], [Country], [HomePhone], [CellPhone], [Email], [Student], [SchoolName]) VALUES (@Password, @FirstName, @MiddleName, @LastName, @Gender, @Address, @City, @Province, @PostalCode, @Country, @HomePhone, @CellPhone, @Email, @Student, @SchoolName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Member]" UpdateCommand="UPDATE [Member] SET [Password] = @Password, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Gender] = @Gender, [Address] = @Address, [City] = @City, [Province] = @Province, [PostalCode] = @PostalCode, [Country] = @Country, [HomePhone] = @HomePhone, [CellPhone] = @CellPhone, [Email] = @Email, [Student] = @Student, [SchoolName] = @SchoolName WHERE [UserId] = @original_UserId AND [Password] = @original_Password AND [FirstName] = @original_FirstName AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND [Address] = @original_Address AND [City] = @original_City AND [Province] = @original_Province AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND (([HomePhone] = @original_HomePhone) OR ([HomePhone] IS NULL AND @original_HomePhone IS NULL)) AND [CellPhone] = @original_CellPhone AND [Email] = @original_Email AND [Student] = @original_Student AND [SchoolName] = @original_SchoolName">
    <DeleteParameters>
        <asp:Parameter Name="original_UserId" Type="Int32" />
        <asp:Parameter Name="original_Password" Type="String" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_MiddleName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_Gender" Type="String" />
        <asp:Parameter Name="original_Address" Type="String" />
        <asp:Parameter Name="original_City" Type="String" />
        <asp:Parameter Name="original_Province" Type="String" />
        <asp:Parameter Name="original_PostalCode" Type="String" />
        <asp:Parameter Name="original_Country" Type="String" />
        <asp:Parameter Name="original_HomePhone" Type="String" />
        <asp:Parameter Name="original_CellPhone" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Student" Type="String" />
        <asp:Parameter Name="original_SchoolName" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="MiddleName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Province" Type="String" />
        <asp:Parameter Name="PostalCode" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="HomePhone" Type="String" />
        <asp:Parameter Name="CellPhone" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Student" Type="String" />
        <asp:Parameter Name="SchoolName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="MiddleName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Province" Type="String" />
        <asp:Parameter Name="PostalCode" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="HomePhone" Type="String" />
        <asp:Parameter Name="CellPhone" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Student" Type="String" />
        <asp:Parameter Name="SchoolName" Type="String" />
        <asp:Parameter Name="original_UserId" Type="Int32" />
        <asp:Parameter Name="original_Password" Type="String" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_MiddleName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_Gender" Type="String" />
        <asp:Parameter Name="original_Address" Type="String" />
        <asp:Parameter Name="original_City" Type="String" />
        <asp:Parameter Name="original_Province" Type="String" />
        <asp:Parameter Name="original_PostalCode" Type="String" />
        <asp:Parameter Name="original_Country" Type="String" />
        <asp:Parameter Name="original_HomePhone" Type="String" />
        <asp:Parameter Name="original_CellPhone" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Student" Type="String" />
        <asp:Parameter Name="original_SchoolName" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
