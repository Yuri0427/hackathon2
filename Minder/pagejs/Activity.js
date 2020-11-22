$(document).ready(function () {
    $("#btnSubmit").click(function () {
        Add();
    });
});

//新增資料
function Add() {
    if (CheckRequired()) { //若無必填欄位為空
        if (confirm("確定送出")) { // 是否確定執行
            let strAPIURL = "../ashx/Activity.ashx";
            let objData = {
                strSystemID: "ActivityPage",
                strAction: "Add",
                txtName: $("#txtName").val(),
                txtCalendar: $("#txtCalendar").val(),
                txtDetail1: $("#txtDetail1").val(),
                txtPeopleNum: $("#txtPeopleNum").val()
            }; // 發送資料
            $.ajax({
                url: strAPIURL,
                data: objData,
                success: function () {
                    alert("成功加入");
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert(errorThrown);
                }
            });
        }
    }
}

//檢查必填欄位
function CheckRequired() {
    var count = 0; //計算有幾個必填欄位為空
    $("#frmActivity :input").each(function () { //遍歷所有input對象
        if ($.trim($(this).val()) == "" & typeof ($(this).attr("required")) != "undefined") { //若欄位為空且為必填
            $(this).focus().addClass("border-red");
            count++;
        }
        else if ($.trim($(this).val()) != "") { //若欄位不為空
            $(this).removeClass("border-green").addClass("border-red");
        }
    });
    return (count == 0);
}