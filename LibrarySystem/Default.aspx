<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VirtualCollege._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to Virtual College</h1>
        <p class="lead">A web-based student service tool with a simple interface</p>
        <p><a href="http://www.centennialcollege.ca/?gclid=CNKstOO59sMCFQsxaQodYhYAag" class="btn btn-primary btn-lg">Centennial College &raquo;</a></p>
    </div>
      <div class="MainMenu"> <ul>
          <li><a href="Default">Main Page</a></li>
          <li><a href="Default">Drop Course</a></li>
          <li><a href="Default">Make appointment</a></li>
          <li><a href="Default">WaitingList</a></li>
          <li><a href="Default">FeedBack</a></li>
          <li><a href="Default">Contact Us</a></li>
           </ul> </div>

        <div>
            <div id="slider">
                <img id="1" src="Images/centennial1.jpg" />
                <img id="2" src ="Images/centennial2.jpg" />
                <img id="3"  src ="Images/centennial3.jpg" />
            </div>
    </div>
    <script src="Scripts/jquery-1.8.2.js"></script>
    <script src="Scripts/jquery-ui-1.8.24.min.js"></script>
    <script src="slider.js"></script>
 

</asp:Content>
