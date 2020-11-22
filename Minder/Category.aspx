<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Minder.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
        <head>
            <link href="./style/fontAwesome.min.css" rel="stylesheet">
            <script defer src="./style/fontAwesome.min.js"></script>
            <script src="./pagejs/Category.js"></script>
        </head>
        <body>
            <center>
                <img src="./picture/1.jpg" id="imgCategory" name="imgCategory" class="opacity-5" width = "500"; height = "500";>
                <p>
            </center>
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-sm-6 col-md-3">
                        <button id="btnSport" type="button" style="width: 190px; height: 150px; border: none; background: transparent;"><i class="fas fa-running fa-6x"></i></button>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <button id="btnLearn" type="button" style="width: 190px; height: 150px; border: none; background: transparent;"><i class="fas fa-book-reader fa-6x"></i></button>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <button id="btnEntertainment" type="button" style="width: 190px; height: 150px; border: none; background: transparent;"><i class="fas fa-chess fa-6x"></i></button>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <button id="btnGetTogether" type="button" style="width: 190px; height: 150px; border: none; background: transparent;"><i class="fas fa-users fa-6x"></i></button>
                    </div>
                </div>
            </div>
        </body>
    </html> 

</asp:Content>
