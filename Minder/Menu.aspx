<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Minder.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="margin-left:150px">今天，我想...</h1>
    <center>
            <div style="border-width:3px;border-style:dashed;border-color:#CEE7A1;padding:5px;">
            <button type="button" onclick="javascript:location.href='./Activity.aspx'" class ="btn btn-primary btn-lg">建立活動</button>
            <button type="button" onclick="javascript:location.href='./TimeSelection.aspx'" class ="btn btn-success btn-lg">參加活動</button><hr />
    
            <img src="picture/sportCloud.png" width="300" ;height="500" style="margin-left:0px"/> <hr />
            <img src="picture/learnCloud.png" width="300" ;height="500" style="margin-left:0px"/><hr />
            <img src="picture/placecloud.png" width="300" ;height="500" style="margin-left:0px"/> <hr />
     </center>
</asp:Content>
