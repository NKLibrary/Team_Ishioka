<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VirtualCollege.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%-- <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />--%></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <div class="col-md-10">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <table style="width: 929px; height: 573px">
                    <tr>
                        <td style="width: 113px; height: 34px">
                <asp:Label ID="NameLbl" runat="server" Text="Name:" Font-Bold="False" Font-Names="Lucida Console"></asp:Label>
                        </td>
                        <td style="width: 327px; height: 34px">
                            <asp:TextBox ID="Nametb" runat="server" Width="366px"></asp:TextBox>
                            <br />
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="GenderLbl" runat="server" Text="Gender:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="Gendertb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="AddressLbl" runat="server" Text="Address:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="Addresstb" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="CityLbl" runat="server" Text="City:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="Citytb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="PostalLbl" runat="server" Text="Postal Code:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="Postaltb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="ProLbl" runat="server" Text="Province:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem>ON</asp:ListItem>
                                <asp:ListItem>QC</asp:ListItem>
                                <asp:ListItem>NS</asp:ListItem>
                                <asp:ListItem>NB</asp:ListItem>
                                <asp:ListItem>MB</asp:ListItem>
                                <asp:ListItem>BC</asp:ListItem>
                                <asp:ListItem>PE</asp:ListItem>
                                <asp:ListItem>SK</asp:ListItem>
                                <asp:ListItem>AB</asp:ListItem>
                                <asp:ListItem>NL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="HomeLbl" runat="server" Text="Home Phone #:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="Hometb" runat="server" TextMode="Phone"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="CellLbl" runat="server" Text="Cell Phone #:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="Celltb" runat="server" TextMode="Phone"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="EmailLbl" runat="server" Text="Primary Email ID:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="Emailtb" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="SecEmailLbl" runat="server" Text="Secondary Email ID:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="SecEmailtb" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="StudentLbl" runat="server" Text="Student:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:RadioButton ID="YesRbtn" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="NoRbtn" runat="server" Text="No" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="SchoolLbl" runat="server" Text="School Name:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:TextBox ID="Schooltb" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="StatusLbl" runat="server" Text="Status:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:RadioButton ID="FTRbtn" runat="server" Text="Full-Time" />
                            <asp:RadioButton ID="PTRbtn" runat="server" Text="Part-Time" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                <asp:Label ID="DateLbl" runat="server" Text="Current Date:"></asp:Label>
                        </td>
                        <td style="width: 327px">
                            <asp:Label ID="DateTimeLbl" runat="server" Text="DateTime"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Submitbtn" runat="server" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Clearbtn" runat="server" Text="Clear All" />
                            <br />
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
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
