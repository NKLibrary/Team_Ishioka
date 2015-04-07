<%@ Page Title="Account Confirmation" Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="VirtualCollege.Account.Confirm" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="Master_Main_Content">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="status" ViewStateMode="Disabled">
            <p><%: StatusMessage %></p>
        </asp:PlaceHolder>
    </div>
</asp:Content>
