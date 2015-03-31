<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Manager.Master" AutoEventWireup="true" CodeBehind="ManagerInfo.aspx.cs" Inherits="VirtualCollege.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Manager_Content" runat="server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ManagerId" DataSourceID="SqlDataSource11" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="ManagerId" HeaderText="ManagerId" InsertVisible="False" ReadOnly="True" SortExpression="ManagerId" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="JoiningDate" HeaderText="JoiningDate" SortExpression="JoiningDate" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="CellPhone" HeaderText="CellPhone" SortExpression="CellPhone" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
<asp:SqlDataSource ID="SqlDataSource11" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Manager] WHERE [ManagerId] = @original_ManagerId AND [Password] = @original_Password AND [FirstName] = @original_FirstName AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND [LastName] = @original_LastName AND [JoiningDate] = @original_JoiningDate AND [Gender] = @original_Gender AND [Address] = @original_Address AND [City] = @original_City AND [Province] = @original_Province AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND [CellPhone] = @original_CellPhone AND [Email] = @original_Email" InsertCommand="INSERT INTO [Manager] ([Password], [FirstName], [MiddleName], [LastName], [JoiningDate], [Gender], [Address], [City], [Province], [PostalCode], [Country], [CellPhone], [Email]) VALUES (@Password, @FirstName, @MiddleName, @LastName, @JoiningDate, @Gender, @Address, @City, @Province, @PostalCode, @Country, @CellPhone, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Manager]" UpdateCommand="UPDATE [Manager] SET [Password] = @Password, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [JoiningDate] = @JoiningDate, [Gender] = @Gender, [Address] = @Address, [City] = @City, [Province] = @Province, [PostalCode] = @PostalCode, [Country] = @Country, [CellPhone] = @CellPhone, [Email] = @Email WHERE [ManagerId] = @original_ManagerId AND [Password] = @original_Password AND [FirstName] = @original_FirstName AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND [LastName] = @original_LastName AND [JoiningDate] = @original_JoiningDate AND [Gender] = @original_Gender AND [Address] = @original_Address AND [City] = @original_City AND [Province] = @original_Province AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND [CellPhone] = @original_CellPhone AND [Email] = @original_Email">
    <DeleteParameters>
        <asp:Parameter Name="original_ManagerId" Type="Int32" />
        <asp:Parameter Name="original_Password" Type="String" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_MiddleName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_JoiningDate" Type="DateTime" />
        <asp:Parameter Name="original_Gender" Type="String" />
        <asp:Parameter Name="original_Address" Type="String" />
        <asp:Parameter Name="original_City" Type="String" />
        <asp:Parameter Name="original_Province" Type="String" />
        <asp:Parameter Name="original_PostalCode" Type="String" />
        <asp:Parameter Name="original_Country" Type="String" />
        <asp:Parameter Name="original_CellPhone" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="MiddleName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="JoiningDate" Type="DateTime" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Province" Type="String" />
        <asp:Parameter Name="PostalCode" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="CellPhone" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="MiddleName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="JoiningDate" Type="DateTime" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Province" Type="String" />
        <asp:Parameter Name="PostalCode" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="CellPhone" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="original_ManagerId" Type="Int32" />
        <asp:Parameter Name="original_Password" Type="String" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_MiddleName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_JoiningDate" Type="DateTime" />
        <asp:Parameter Name="original_Gender" Type="String" />
        <asp:Parameter Name="original_Address" Type="String" />
        <asp:Parameter Name="original_City" Type="String" />
        <asp:Parameter Name="original_Province" Type="String" />
        <asp:Parameter Name="original_PostalCode" Type="String" />
        <asp:Parameter Name="original_Country" Type="String" />
        <asp:Parameter Name="original_CellPhone" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>


</asp:Content>
