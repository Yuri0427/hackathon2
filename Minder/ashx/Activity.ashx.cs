using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Minder.ashx
{
    /// <summary>
    /// Activity 的摘要描述
    /// </summary>
    public class Activity : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            DB db = new DB();
            //string strSystemID = context.Request["strSystemID"]; // 系統識別碼
            //string strAction = context.Request["strAction"]; // 執行動作
            //string strResponse = "";
            string txtName = context.Request["txtName"].Trim();
            string txtCalendar = context.Request["txtCalendar"].Trim();
            string txtDetail1 = context.Request["txtDetail1"].Trim();
            string txtPeopleNum = context.Request["txtPeopleNum"].Trim();
            db.Add(txtName, txtCalendar, txtDetail1, txtPeopleNum);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}