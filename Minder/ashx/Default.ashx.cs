using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Minder.ashx
{
    /// <summary>
    /// Default 的摘要描述
    /// </summary>
    public class Default : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string strLoginID = context.Request["txtLoginID"]; //帳號
            string strLoginPWD = context.Request["txtLoginPWD"]; //密碼
            DB db = new DB();
            string strTest = Convert.ToString(db.Login(strLoginID, strLoginPWD));
            context.Response.ContentType = "text/plain"; // JSON 格式
            context.Response.Write(strTest);
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