using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yifan
{
    public partial class admin_signin_from : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Go_Admin_Server_Click(object sender, EventArgs e)
        {

            //sql server windows身份验证
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            //sql server 身份验证 连接字符串
            //string conStr="Server=ZHANG-PC;database=yifan_db;User=SaveControlState;pwd=123";

            SqlConnection conCon = new SqlConnection(conStr);
            //imput type=text HTML标签中没有加runat="server"转换成服务器控件用Request["name属性"]获取输入的值
            string UserName = Request["Username"].Trim();
            string PassWord = Request["Password"].Trim();

            //imput type=text HTML标签中如果加入了runat="server"就转换成了服务器控件可以直接用this.id.value获取输入的值
            //string UserName = this.Username.Value.Trim();
            //string PassWord = this.Password.Value.Trim();
            try
            {
                conCon.Open();  //打开数据库连接
                string sql = "SELECT * FROM admin_tb WHERE admin_name='" + UserName + "' and admin_pwd='" + PassWord + "'";
                SqlCommand comText = new SqlCommand(sql, conCon);
                SqlDataReader dr;
                dr = comText.ExecuteReader();
                if (dr.Read())    //判断SQL执行登录是否成功，成功执行下面语句
                {
                    Session["UserName"] = dr["admin_name"].ToString().Trim();
                    Session["PassWord"] = dr["admin_pwd"].ToString().Trim();
                    Session["AdminName"] = dr["admin_show_name"].ToString().Trim();
                    Response.Redirect("./admin_index.aspx?adminName="+dr["admin_name"].ToString().Trim()+"");//登陆成功跳转页面
                }
                else　　//不成功提示登录失败
                {
                    Response.Write("<script>alert('用户名或密码错误！')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex+"'.Message.ToString())</script>");
            }
            finally
            {
                conCon.Close();   //关闭数据库链接
            }

        }
    }
}