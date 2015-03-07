<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddReservationControl.ascx.cs" Inherits="VirtualCollege.UserControls.AddReservationControl" %>
<asp:Label ID="lblExpireDate" runat="server" Text="Expire Date"></asp:Label>
<asp:TextBox ID="txtExpireDate" runat="server" TextMode="Date"></asp:TextBox>
<asp:Label ID="lblReserveStatus" runat="server"></asp:Label>
<asp:Button ID="btnReserve" runat="server" OnClick="btnReserve_Click" Text="Hold" />
<asp:Button ID="btnCancel" runat="server" Text="Cancel Hold" />

