<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master_Main.Master" CodeBehind="home.aspx.cs" Inherits="VirtualCollege.Home" %>

<asp:Content ID="content1" ContentPlaceHolderID="Master_Main_Content" runat="server">



    <asp:Label ID="lblLogin" runat="server" Visible="false">
        You have logged in successfully!
        <br />
        Now you can access the Library.
    </asp:Label>

</asp:Content>
