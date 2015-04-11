<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Librarian.Master" AutoEventWireup="true" CodeBehind="ProcessReservationListViewM.aspx.cs" Inherits="VirtualCollege.View.ProcessReservationListViewM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master_Librarian_Content" runat="server">
    <div style="margin-left:0;">
    
        <h3>Process Reservation List</h3><br />
        <asp:RadioButton ID="rbtnTodo" runat="server" Checked="True" GroupName="mode" OnCheckedChanged="rbtnTodo_CheckedChanged" Text="To Do" AutoPostBack="True" />
        <asp:RadioButton ID="rbtnHistory" runat="server" GroupName="mode" OnCheckedChanged="rbtnHistory_CheckedChanged" Text="History" AutoPostBack="True" />
        <br />
        <asp:GridView ID="gvReservation" runat="server" OnRowEditing="gvReservation_RowEditing">
            <Columns>
                <asp:TemplateField HeaderText="Confirm">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" OnClientClick="return confirm('You will complete this reservation and send email to the member. Do you want to continue?')">Confirm</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
       


            </Columns>
        </asp:GridView>
    
    </div>
</asp:Content>
