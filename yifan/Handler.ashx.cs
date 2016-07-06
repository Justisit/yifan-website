using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace yifan
{
    public class Handler : IHttpHandler {
    
        public void ProcessRequest (HttpContext context) 
        {
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            string goodsNum = context.Request["goodsNum"];
            string likeNum = context.Request["like"];
                conCon.Open();  //打开数据库连接
                if (likeNum != null)
                {
                    int upvoteNew = Int32.Parse(likeNum);
                    string sqlLike = "UPDATE goods_tb SET upvote = '" + upvoteNew + "' WHERE goods_id = '" + goodsNum + "'";
                    SqlCommand comTextLike = new SqlCommand(sqlLike, conCon);
                    comTextLike.ExecuteNonQuery();
                    context.Response.Write(likeNum);
                    context.Response.End();
                }
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