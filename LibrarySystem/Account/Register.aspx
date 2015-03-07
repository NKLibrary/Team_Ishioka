<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VirtualCollege.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
        <div class="form-group">
            <div class="col-md-10">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <table style="width: 929px; height: 573px">
                    <tr>
                        <td style="width: 113px; height: 34px">
                        <td style="width: 161px; height: 34px">
                <asp:Label ID="NameLbl" runat="server" Text="Name:" CssClass ="infoLabel" Font-Bold="False" Font-Names="Lucida Console"></asp:Label>
                        </td>
                        <td style="width: 267px; height: 34px">
                            <asp:TextBox ID="Nametb" runat="server" Width="269px" CssClass="textContact" ></asp:TextBox>
                            &nbsp;</td>
                        <td style="width: 240px; height: 34px">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Nametb" CssClass="textContact" ErrorMessage="User Name is required." ToolTip="User Name is required." ID="UserNameRequired" BackColor="White" BorderColor="White" ForeColor="Red">*Please Enter Name</asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr><td></td><td>Password : <asp:TextBox ID="passwordtb" runat="server" TextMode="Password"></asp:TextBox>
                        </td><td></td></tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px; height: 50px;">
                <asp:Label ID="GenderLbl" CssClass ="infoLabel" runat="server" Text="Gender:"></asp:Label>
                        </td>
                        <td style="width: 267px; height: 50px;">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                 <asp:ListItem>Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                                 <asp:ListItem>Prefer not to answer</asp:ListItem>
                            </asp:RadioButtonList>
                          
                        </td>
                        <td style="width: 240px; height: 50px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please select any one" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="AddressLbl" CssClass ="infoLabel" runat="server" Text="Address:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="Addresstb" runat="server" CssClass="textContact" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td style="width: 240px">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Addresstb" ErrorMessage="Address is required." ToolTip="Address is required." ID="UserNameRequired1" BackColor="White" BorderColor="White" ForeColor="Red">*Please Enter Address</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="CityLbl" runat="server" CssClass ="infoLabel" Text="City:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="Citytb" CssClass="textContact" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 240px">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Citytb" ErrorMessage="City is required." ToolTip="City is required." ID="UserNameRequired2" BackColor="White" BorderColor="White" ForeColor="Red">*Please Enter City</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="PostalLbl" runat="server" CssClass ="infoLabel" Text="Postal Code:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="Postaltb" CssClass="textContact" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 240px">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Postaltb" ErrorMessage="Postal Code is required." ToolTip="Postal Code is required." ID="UserNameRequired3" BackColor="White" BorderColor="White" ForeColor="Red">*Please Enter Postal Code</asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Postaltb" ErrorMessage="Please enter valid Postal Code" ForeColor="#0000CC" ToolTip="*Please enter valid Postal Code" ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}[A-Z,1-9]{1}$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="ProLbl" runat="server" CssClass ="infoLabel" Text="Province:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem>ON</asp:ListItem>
                                <asp:ListItem>QC</asp:ListItem>
                                <asp:ListItem>NL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 240px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="HomeLbl" runat="server" CssClass ="infoLabel" Text="Home Phone #:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="Hometb" CssClass="textContact" runat="server" TextMode="Phone"></asp:TextBox>
                        </td>
                        <td style="width: 240px">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Hometb" ErrorMessage="Home # is required." ToolTip="Home # is required." ID="UserNameRequired4" BackColor="White" BorderColor="White" ForeColor="Red">*Please Enter Home Phone #</asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Hometb" ErrorMessage="Please Enter Valid Number" ValidationExpression="[0-9]{10}" ForeColor="#0000CC" ToolTip="Please Enter Valid Number"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px; height: 42px;">
                <asp:Label ID="CellLbl" runat="server" CssClass ="infoLabel" Text="Cell Phone #:"></asp:Label>
                        </td>
                        <td style="width: 267px; height: 42px;">
                            <asp:TextBox ID="Celltb" CssClass="textContact" runat="server" TextMode="Phone"></asp:TextBox>
                        </td>
                        <td style="width: 240px; height: 42px;">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Celltb" ErrorMessage="Cell # is required." ToolTip="Cell # is required." ID="UserNameRequired5" BackColor="White" BorderColor="White" ForeColor="Red">*Please Enter Cell Phone #</asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Celltb" ErrorMessage="Please Enter Valid Number" ValidationExpression="[0-9]{10}" ForeColor="#0000CC" ToolTip="Please Enter Valid Number" Display="Dynamic" SetFocusOnError="true"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="EmailLbl" runat="server" CssClass ="infoLabel" Text="Primary Email ID:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="Emailtb" CssClass="textContact" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                        <td style="width: 240px">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Emailtb" ErrorMessage="Email ID is required." ToolTip="Email ID is required." ID="UserNameRequired6" BackColor="White" BorderColor="White" ForeColor="Red">*Please Enter Email ID</asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Emailtb" ErrorMessage="Please Enter valid Email ID" ToolTip="Please Enter valid Email ID" Display="Dynamic" ForeColor="#0000CC" SetFocusOnError="True"
         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="SecEmailLbl" runat="server" CssClass ="infoLabel" Text="Secondary Email ID:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="SecEmailtb" CssClass="textContact" runat="server" TextMode="Email" OnTextChanged="SecEmailtb_TextChanged"></asp:TextBox>
                        </td>
                        <td style="width: 240px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="StudentLbl" runat="server" CssClass ="infoLabel" Text="Student:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td style="width: 240px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate ="RadioButtonList2" ErrorMessage="Please select any one" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="SchoolLbl" runat="server" CssClass ="infoLabel" Text="School Name:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="Schooltb" CssClass="textContact" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 240px">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Schooltb" ErrorMessage="School Name is required." ToolTip="School Name is required." ID="UserNameRequired7" BackColor="White" BorderColor="White" ForeColor="Red">*Please Enter School Name</asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="StatusLbl" runat="server" CssClass ="infoLabel" Text="Status:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                <asp:ListItem>Full-Time</asp:ListItem>
                                <asp:ListItem>Part-Time</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td style="width: 240px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="RadioButtonList3" ErrorMessage="Please select any one" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 113px">
                        <td style="width: 161px">
                <asp:Label ID="DateLbl" runat="server" CssClass ="infoLabel" Text="Current Date:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:Label ID="DateTimeLbl" CssClass ="infoLabel" runat="server" Text="DateTime"></asp:Label>
                        </td>
                        <td style="width: 240px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;</td>
                        <td style="width: 267px; height: 44px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           
                            <asp:Button ID="Submitbtn" runat="server" Text="Submit" OnClick="Submitbtn_Click" />
                           
                        </td>
                        <td style="width: 240px; height: 44px;">
                            <asp:Button ID="Clearbtn" runat="server" OnClick="Button2_Click" Text="Clear All" />
                            </td>
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
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
               <%-- <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />--%>
            </div>
        </div>
    </div>

   
</asp:Content>