using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Minder
{
    public class DB
    {
        public SqlConnection cn;

        public DB()
        {
            string connection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Administrator\Desktop\Minder\Minder\App_Data\Minder.mdf;Integrated Security=True";
            cn = new SqlConnection
            {
                ConnectionString = connection
            };
        }

        public void Add(string txtName, string txtCalendar, string txtDetail1, string txtPeopleNum)
        {
            cn.Open();
            SqlCommand cm;
            //現在時間
            string strCm = "INSERT Activity (name,date,detail,peopleNum)" +
                " VALUES('"+ txtName + "', "+ txtCalendar + ", '"+ txtDetail1 + "', "+ txtPeopleNum + ")";
            cm = new SqlCommand(strCm, cn);
            cm.ExecuteNonQuery();
            cn.Close();
            cn.Dispose();
        }

        public bool Login(string _strLoginID, string _strLoginPWD) //登入 //傳回使用者輸入的帳號密碼是否存在
        {
            cn.Open();
            SqlCommand cm;
            string strCm = @"SELECT pwd
            FROM Member
            WHERE id='"+ _strLoginID + "'";
            cm = new SqlCommand(strCm, cn);
            SqlDataReader dr = cm.ExecuteReader();
            string strLoginPWD = "";
            if (dr.Read())
                strLoginPWD = Convert.ToString(dr[0]);
            cn.Close();
            cn.Dispose();
            return _strLoginPWD == strLoginPWD;
        }

    }
}