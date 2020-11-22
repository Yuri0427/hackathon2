<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Minder._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="pagejs/Default.js"></script>

    <form class="form-signin">
        <div class="row justify-content-center"><i class="fas fa-lock fa-8x"></i></div>
        <div role="form" class="container m-4">
                <div class="form-group row justify-content-center">
                    <label for="txtLoginID" class=" sr-only">帳號</label>
                    <input type="email" id="txtLoginID" class="form-control" placeholder="帳號" required autofocus>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="txtLoginPWD" class="sr-only">密碼</label>
                <input type="password" id="txtLoginPWD" class="form-control" placeholder="密碼" required>
                        
            </div>
                
        <div class="checkbox mb-3 row justify-content-center">
            <label>
                <input type="checkbox" value="remember-me">自動登入
            </label>
        </div>
        <div class="row justify-content-center"><button id="btnSubmit" class="col-4 btn btn-outline-success" type="button">登入</button></div>
        </div>
            <p class="mt-5 mb-3 text-muted">&copy;2020</p>
    </form>
</asp:Content>
