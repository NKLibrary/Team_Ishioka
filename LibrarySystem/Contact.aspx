<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="VirtualCollege.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Contact Us</h2>
    <h3>Your contact page.</h3>
    <address>
        256 Richmond Hill<br />
        Toronto, ON 568-8966<br />
        <abbr title="Phone">P:</abbr>
        425.588.4566
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">nehakhalwadekar@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Nehakhalwadekar@example.com</a>
    </address>
</asp:Content>
