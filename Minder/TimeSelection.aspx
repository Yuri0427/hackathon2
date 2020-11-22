<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TimeSelection.aspx.cs" Inherits="Minder.TimeSelection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="pagejs/TimeSelection.js"></script>
    <div class="container">
        <div class="row justify-content-center">
            <div class="calendar">
                <div class="title">
                    <h1 class="green" id="calendar-title">Month</h1>
                    <h2 class="green small" id="calendar-year">Year</h2>
                    <a id="prev"><i class="fas fa-angle-left fa-3x"></i></a>
                    <a id="next"><i class="fas fa-angle-right fa-3x"></i></a>
                </div>
                <div class="body">
                    <div class="lightgrey body-list">
                        <ul>
                            <li>MON</li>
                            <li>TUE</li>
                            <li>WED</li>
                            <li>THU</li>
                            <li>FRI</li>
                            <li>SAT</li>
                            <li>SUN</li>
                        </ul>
                    </div>
                    <div class="darkgrey body-list">
                        <ul id="days">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
