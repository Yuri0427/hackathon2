<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Activity.aspx.cs" Inherits="Minder.Activity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
        <head>
            <script src="./pagejs/Activity.js"></script>
        </head>
        <body>
            <h1>建立活動資訊</h1>
            <form id="frmActivity">
                <div class="form-group">
                    <label for="txtName">活動名稱</label>
                    <input type="text" class="form-control" id="txtName" name="txtName" placeholder="輸入活動名稱" required>
                </div>

                <div class="form-group">
                    <label for="txtCalendar">日期</label>
                    <input type="datetime-local" id="txtCalendar" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="txtPeopleNum">內容</label>
                    <input type="text" class="form-control" id="txtDetail1" name="txtDetail1" placeholder="輸入內容">
                </div>

                <div class="form-group">
                    <label for="txtPeopleNum">人數</label>
                    <input type="text" class="form-control" id="txtPeopleNum" name="txtPeopleNum" placeholder="輸入人數" value="" required>
                </div>

                <button type="button" id="btnSubmit" class="btn btn-primary">確定</button>
                <button type="reset" class="btn btn-success">重填</button>
            </form>
        </body>
    </html>


</asp:Content>
