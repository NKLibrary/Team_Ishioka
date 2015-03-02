<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="MemberWelcome.aspx.cs" Inherits="VirtualCollege.Account.MemberWelcome" %>

<%@ Register Src="~/leftNav.ascx" TagName="leftNav" TagPrefix="uc1" %>
<%@ Register Src="~/horizontalNav.ascx" TagName="horiNav" TagPrefix="uc2" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <uc2:horiNav ID="horiNav1" runat="server" /> 
    <uc1:leftNav ID="leftNav1" runat="server" />   
</asp:Content>
