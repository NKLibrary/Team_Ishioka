<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Manager.Master" AutoEventWireup="true" CodeBehind="Librariansdetails.aspx.cs" Inherits="VirtualCollege.Librariansdetails" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Manager_Content" runat="server">

    <br />
    <span style="font-size: large"><strong>Manage all Librarians</strong><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="LibrarianId" DataSourceID="sdsLibrarians">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="LibrarianId" HeaderText="LibrarianId" InsertVisible="False" ReadOnly="True" SortExpression="LibrarianId" />
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
    </asp:GridView>
    <asp:SqlDataSource ID="sdsLibrarians" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Librarian] WHERE [LibrarianId] = @LibrarianId" InsertCommand="INSERT INTO [Librarian] ([Password], [FirstName], [MiddleName], [LastName], [JoiningDate], [Gender], [Address], [City], [Province], [PostalCode], [Country], [CellPhone], [Email]) VALUES (@Password, @FirstName, @MiddleName, @LastName, @JoiningDate, @Gender, @Address, @City, @Province, @PostalCode, @Country, @CellPhone, @Email)" SelectCommand="SELECT * FROM [Librarian]" UpdateCommand="UPDATE [Librarian] SET [Password] = @Password, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [JoiningDate] = @JoiningDate, [Gender] = @Gender, [Address] = @Address, [City] = @City, [Province] = @Province, [PostalCode] = @PostalCode, [Country] = @Country, [CellPhone] = @CellPhone, [Email] = @Email WHERE [LibrarianId] = @LibrarianId">
        <DeleteParameters>
            <asp:Parameter Name="LibrarianId" Type="Int32" />
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
            <asp:Parameter Name="LibrarianId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </span><br />
    

    <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
    

    <br />
    Add a new Librarian<br />
    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 204px">First Name</td>
            <td>
    <asp:TextBox ID="libfname" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Middle Name</td>
            <td>
    <asp:TextBox ID="libmname" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Last Name</td>
            <td>
    <asp:TextBox ID="liblname" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Password</td>
            <td>
    <asp:TextBox ID="libpwd" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Phone Number</td>
            <td>
    <asp:TextBox ID="libcell" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Email</td>
            <td>
    <asp:TextBox ID="libemail" runat="server" Width="130px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td style="width: 204px">Gender</td>
            <td>
    <asp:TextBox ID="libgender" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Address</td>
            <td>
    <asp:TextBox ID="libadd" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">City</td>
            <td>
    <asp:TextBox ID="libcity" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Province</td>
            <td>
    <asp:TextBox ID="libprovince" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Country</td>
            <td>
    <asp:TextBox ID="libcountry" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Postal Code</td>
            <td>
    <asp:TextBox ID="libpost" runat="server" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">Joining Date</td>
            <td>
    <asp:TextBox ID="libdate" runat="server" Width="130px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />

    <asp:Button ID="Btninsert" runat="server" Text="ADD" Width="66px" OnClick="Btninsert_Click" />

</asp:Content>
