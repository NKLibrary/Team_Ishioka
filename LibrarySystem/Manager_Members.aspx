<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master_Manager.Master" CodeBehind="Manager_Members.aspx.cs" Inherits="VirtualCollege.Manager_Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Master_Manager_Content" runat="server">
    <link href="css/menu.css" rel="stylesheet" />
    <br />
    <span style="font-size: large"><strong>Manage all Members</strong><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="MemberManager" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
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
    <asp:SqlDataSource ID="MemberManager" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Member] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Member] ([Password], [FirstName], [MiddleName], [LastName], [Gender], [Address], [City], [Province], [PostalCode], [Country], [HomePhone], [CellPhone], [Email], [Student], [SchoolName]) VALUES (@Password, @FirstName, @MiddleName, @LastName, @Gender, @Address, @City, @Province, @PostalCode, @Country, @HomePhone, @CellPhone, @Email, @Student, @SchoolName)" SelectCommand="SELECT * FROM [Member]" UpdateCommand="UPDATE [Member] SET [Password] = @Password, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Gender] = @Gender, [Address] = @Address, [City] = @City, [Province] = @Province, [PostalCode] = @PostalCode, [Country] = @Country, [HomePhone] = @HomePhone, [CellPhone] = @CellPhone, [Email] = @Email, [Student] = @Student, [SchoolName] = @SchoolName WHERE [UserId] = @UserId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
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
            <asp:Parameter Name="UserId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </span><br />
    

    <br />
    <br />
   <br />
    Add a new Librarian<br />
    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label1"  CssClass="infoLabel" runat="server" Text="First Name" Width="113px" Height="16px"></asp:Label>
            </td>
            <td style="height: 25px">
    <asp:TextBox ID="memfname"  runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label2"  CssClass="infoLabel" runat="server" Text="Middle Name" Width="113px" Height="16px"></asp:Label>
                </td>
            <td style="height: 25px">
    <asp:TextBox ID="memmname" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label3"  CssClass="infoLabel" runat="server" Text="Last Name" Width="113px" Height="16px"></asp:Label>
                </td>
            <td style="height: 25px">
    <asp:TextBox ID="memlname" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label4"  CssClass="infoLabel" runat="server" Text="Password" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="mempwd" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label5"  CssClass="infoLabel" runat="server" Text="Phone Number" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="memcell" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label6"  CssClass="infoLabel" runat="server" Text="Email" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="mememail" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label7"  CssClass="infoLabel" runat="server" Text="Gender" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="memgender" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label8"  CssClass="infoLabel" runat="server" Text="Address" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="memadd" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label9"  CssClass="infoLabel" runat="server" Text="City" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="memcity" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label10"  CssClass="infoLabel" runat="server" Text="Province" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="memprovince" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label11"  CssClass="infoLabel" runat="server" Text="Country" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="memcountry" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label12"  CssClass="infoLabel" runat="server" Text="Postal Code" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="mempost" runat="server" CssClass="textContact" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 25px;"><asp:Label ID="Label13"  CssClass="infoLabel" runat="server" Text="Joining Date" Width="113px" Height="16px"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="memdate" runat="server" Width="130px" CssClass="textContact" Enabled="False"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table style="width: 30%">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 91px">&nbsp;</td>
            <td>

    <asp:Button ID="Btninsertmember" runat="server" CssClass="infoButton" Text="ADD" Width="66px" OnClick="Btninsertmember_Click" />

            </td>
        </tr>
    </table>
    <br />

</asp:Content>
