<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Member.Master" AutoEventWireup="true" CodeBehind="ReservationListViewM.aspx.cs" Inherits="VirtualCollege.View.ReservationListViewM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Master_Member_Content" runat="server">
    <p>
        Reservation List:<br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Place Reservation" Visible="False" />
        <br />
        <asp:GridView ID="gvReservtions" runat="server" OnDataBound="gvReservtions_DataBound" OnRowEditing="gvReservtions_RowEditing" OnRowCreated="gvReservtions_RowCreated">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnCancel" runat="server" CommandName="Edit" OnClientClick="return confirm('Are you sure to cancel this reservation?')">Cancel</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
