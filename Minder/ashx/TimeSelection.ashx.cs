using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Minder.ashx
{
    /// <summary>
    /// TimeSelection 的摘要描述
    /// </summary>
    public class TimeSelection : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            DB db = new DB();
            //string strSystemID = context.Request["strSystemID"]; // 系統識別碼
            //string strAction = context.Request["strAction"]; // 執行動作
            //string strResponse = "";
            string txtDetail1 = context.Request["txtDetail1"].Trim();

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