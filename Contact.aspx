<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="VirtualCollege.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="Master_Main_Content" runat="server">
    <h3>Contact Us</h3>
    <address>
        256 Richmond Hill<br />
        Toronto, ON 568-8966<br />
        <abbr title="Phone">P:</abbr>
        425.588.4566
    </address>
    <br />
    <table style="border:solid">
        <tr>
            <td style="border:solid;text-decoration:solid; text-align:center " >
                Hours of Service
            </td>
        </tr>
        <tr>
            <td style="border:thin;text-decoration:solid">
                Days
            </td>
            <td style="border:thin;text-decoration:solid">
                Hours
            </td>
        </tr>
        <tr>
            <td style="border:thin;text-decoration:solid">
                Monday - Thursday
            </td>
            <td style="border:thin;text-decoration:solid">
                9 a.m. - 8:30 p.m
            </td>
        </tr>
                <tr>
            <td style="border:thin;text-decoration:solid">
                Friday
            </td>
            <td style="border:thin;text-decoration:solid">
                9 a.m. - 6 p.m
            </td>
        </tr>
                <tr>
            <td style="border:thin;text-decoration:solid">
                Saturday
            </td>
            <td style="border:thin;text-decoration:solid">
                9 a.m. - 5 p.m
            </td>
        </tr>
                 <tr>
            <td style="border:thin;text-decoration:solid">
                Sunday
            </td>
            <td style="border:thin;text-decoration:solid">
                1:30 p.m. - 5 p.m
            </td>
        </tr>
    </table>
    <br />
    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">nehakhalwadekar@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Nehakhalwadekar@example.com</a>
    </address>
</asp:Content>
