using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace yifan
{
    public class sqlHelper
    {
        /// <summary>
        ///sqlHelper 的摘要说明
        /// </summary>

        public sqlHelper()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        public static readonly string sqlstr = ConfigurationManager.ConnectionStrings["sqlcnn"].ConnectionString;
        /// <summary>
        /// 获取结果集的第一行第一列的结果
        /// </summary>
        /// <param name="sqlText">要执行的检索语句</param>
        /// <param name="paramss">检索语句中的参数列表</param>
        /// <returns></returns>
        public static object ExecuteScalar(string sqlText, params SqlParameter[] paramss)
        {
            using (SqlConnection sqlcnn = new SqlConnection(sqlstr))
            {
                using (SqlCommand sqlcmm = sqlcnn.CreateCommand())
                {
                    sqlcmm.CommandText = sqlText;
                    FillParam(paramss, sqlcmm);
                    sqlcnn.Open();
                    return sqlcmm.ExecuteScalar();
                }
            }
        }//返回查找的第一行第一列
        /// <summary>
        /// 填充Command对象的参数列表
        /// </summary>
        /// <param name="paramss">参数列表</param>
        /// <param name="sqlcmm">command对象</param>
        private static void FillParam(SqlParameter[] paramss, SqlCommand sqlcmm)
        {
            foreach (SqlParameter param in paramss)
            {
                sqlcmm.Parameters.Add(param);
            }
        }//遍历参数
        /// <summary>
        /// 执行对数据库的增、删、改操作，并返回数据库中受影响的行数
        /// </summary>
        /// <param name="sqlText">要执行的insert、update、delete语句</param>
        /// <param name="paramss">要执行的语句中的参数列表</param>
        /// <returns></returns>
        public static int ExecuteNonquery(string sqlText, params SqlParameter[] paramss)
        {
            using (SqlConnection sqlcnn = new SqlConnection(sqlstr))
            {
                using (SqlCommand sqlcmm = sqlcnn.CreateCommand())
                {
                    sqlcmm.CommandText = sqlText;
                    FillParam(paramss, sqlcmm);
                    sqlcnn.Open();
                    return sqlcmm.ExecuteNonQuery();
                }
            }
        }//返回sqlcmm.ExcuteQuery()
        /// <summary>
        /// 获取检索结果集，返回DataTable
        /// </summary>
        /// <param name="sqlText">要执行的检索语句</param>
        /// <param name="paramss">检索语句中的参数列表</param>
        /// <returns></returns>
        public static DataTable ExecteTable(string sqlText, params SqlParameter[] paramss)
        {
            using (SqlConnection sqlcnn = new SqlConnection(sqlstr))
            {
                using (SqlCommand sqlcmm = sqlcnn.CreateCommand())
                {
                    sqlcmm.CommandText = sqlText;
                    FillParam(paramss, sqlcmm);
                    sqlcnn.Open();
                    using (SqlDataReader reader = sqlcmm.ExecuteReader())
                    {
                        DataTable dt = new DataTable();
                        dt.Load(reader);
                        return dt;
                    }
                }
            }
        }//返回DataTable
    }
}