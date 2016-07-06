using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yifan
{
    public partial class admin_index : System.Web.UI.Page
    {
        public string admin_himg_address = "images/shortcutlogo01.png";
        public string show_text = "Admin";
        public string show_title = "admin picute";
        protected void Page_Load(object sender, EventArgs e)
        {
            string goodsNum = Request.QueryString["adminName"];
            string account = "";
            if (!IsPostBack)
            {

                if (Session["UserName"] == null && Session["PassWord"] == null)
                {

                    //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('sorry!您无权进行次操作，登陆超时或未登录，请登录验证'),window.location = './admin_signin_from.aspx'", true);
                    //Response.Redirect("./admin_signin_from.aspx");//跳转页面
                    Response.Write("<script language = javascript>alert('sorry!您无权进行次操作，登陆超时或未登录，请登录验证');location.href = './admin_signin_from.aspx';</script>");
                }
                if (Session["UserName"] != null)
                {
                    account = Session["UserName"].ToString();
                    this.Account.Value = Session["UserName"].ToString();
                }
                string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
                SqlConnection conCon = new SqlConnection(conStr);
                try
                {
                    conCon.Open();
                    string sqlStr = "SELECT admin_name,admin_show_name,upic_name,upic_address From admin_tb WHERE admin_name = '" + account + "'";
                    SqlCommand comText = new SqlCommand(sqlStr,conCon);
                    SqlDataReader dr = comText.ExecuteReader();
                    dr.Read();
                    this.admin_himg_address = dr["upic_address"].ToString();
                    this.show_text = dr["admin_show_name"].ToString();
                    this.show_title = dr["upic_name"].ToString();
                    //this.Account.Value = dr["admin_name"].ToString();
                    dr.Close();
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString());", true);
                }
                finally
                {
                    conCon.Close();
                }

            }

        }
    }
}