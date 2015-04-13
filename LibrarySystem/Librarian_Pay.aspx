<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master_Librarian.Master" CodeBehind="Librarian_Pay.aspx.cs" Inherits="VirtualCollege.Librarian_Pay" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Master_Librarian_Content1" runat="server">

      <link href="css/menu.css" rel="stylesheet" />
    <asp:Label ID="Label1" runat="server" BackColor="#66FFFF" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#FF0066" Text="Fine Calculator"></asp:Label>
    <br />
    <br />


    <asp:Label ID="lblmsg"  runat="server" Text="Select dates:"></asp:Label>


    <table style="width: 124%">
        <tr>
            <td>
                <asp:Label ID="FromLbl" runat="server" CssClass ="infoLabel" Width="45px" Text="From"></asp:Label>
            </td>
            <td style="width: 182px">
    <input type="text" id="startdate"/></td>
            <td>
                <asp:Label ID="ToLbl" runat="server" CssClass ="infoLabel" Width="45px" Text="To"></asp:Label>
            </td>
            <td>
    <input type="text" id="enddate"/></td>
        </tr>
    </table>

&nbsp;<table style="width: 100%">
        <tr>
            <td style="height: 30px"></td>
            <td style="height: 30px">
    <button type="button" onclick="Calculatedays();" style="padding:1px; color:#0C6;margin-left:15%;margin-top:5%" >Calculate</button>

            </td>
        </tr>
    </table>
    <div style="margin:1%;" id="Result"> </div>
    
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Master_Librarian_Content" runat="server">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script>

        $(document).ready(function () {
            $("#startdate").datepicker({
                onSelect: function (selected) {
                    $("#enddate").datepicker("option", "minDate", selected)
                }
            });
            $("#enddate").datepicker({
                onSelect: function (selected) {
                    $("#startdate").datepicker("option", "maxDate", selected)
                }
            });
        });
        //function for count days
        function Calculatedays() {

            if ($("#startdate").val() != "" && $("#enddate").val() != "") {

                var From_date = new Date($("#startdate").val()); // store start date
                var To_date = new Date($("#enddate").val());// store end date
                var diff_date = To_date - From_date; // store dfn btwn dates

                var days = Math.floor(((diff_date % 31536000000) % 2628000000) / 86400000);//for count days
                if (days >= 10) { //if counted days is gr8 then 10 then this condition is apply
                    var fullDate = new Date();//for taking current date
                    var diff_days = fullDate - To_date; // for count diff btwn current date to end date
                    var totalfineddays = Math.floor(((diff_days % 31536000000) % 2628000000) / 86400000);//for  count total penalty  days
                    var totalFine = totalfineddays * 10; // apply charges for per day
                    $("#Result").html("Total Fine in $:" + totalFine);
                }
            }
            else {
                alert("Please select dates");
                return false;
            }
        }
    </script>
</asp:Content>