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

    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);

            HttpPostedFile _upfile = context.Request.Files["admin_himg"];
            string textMessage = context.Request.Form["admin_showText"];
            string account = context.Request.Form["account"];
            if (_upfile == null)
            {
                ResponseWriteEnd(context, "4");//请选择要上传的文件
            }
            else
            {
                string fileName = _upfile.FileName;/*获取文件名： C:\Documents and Settings\Administrator\桌面\123.jpg*/
                string imgName = fileName.Substring(fileName.LastIndexOf("\\") + 1);//获取图片的文件名（含扩展名）
                string nameStr = DateTime.Now.ToLocalTime().ToString();
                string suffix = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();/*获取后缀名并转为小写： jpg*/
                string[] type = new string[] { "jpg", "gif", "bmp", "jpeg", "png" };
                int bytes = _upfile.ContentLength;//获取文件的字节大小
                Boolean b = false;
                for (int i = 0; i < type.Length; i++)
                {
                    if (suffix == type[i]) b = true;
                }
                if (!b)
                    ResponseWriteEnd(context, "2"); //只能上传一定格式图片  
                if (bytes > 1024 * 1024)
                    ResponseWriteEnd(context, "3"); //图片不能大于1M
                string wpath = "/upload/images_touxiang/" + account +"." + suffix;        //设置文件保存相对路径
                try
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "UPDATE admin_tb SET upic_name = '" + imgName + "', upic_address = '" + wpath + "',admin_show_name = '" + textMessage + "' WHERE admin_name = '" + account + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    comText.ExecuteNonQuery();  // 执行语句 
                    _upfile.SaveAs(HttpContext.Current.Server.MapPath("~/upload/images_touxiang/" + account  + "." + suffix + ""));//保存图片
                    ResponseWriteEnd(context, "1"); //上传成功
                    //_upfile.SaveAs(HttpContext.Current.Server.MapPath("~/upload/image_touxiang/" + nameStr + ""));//保存图片  
                    //ResponseWriteEnd(context, "1"); //上传成功  

                }
                catch (Exception ex)
                {
                    //ResponseWriteEnd(context, ex.ToString()); 
                    //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString());", true);
                }
                finally
                {
                    conCon.Close();   //关闭数据库链接
                }

            }
        }

        private void ResponseWriteEnd(HttpContext context, string msg)
        {
            context.Response.Write(msg);
            context.Response.End();
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