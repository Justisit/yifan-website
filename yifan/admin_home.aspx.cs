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
    public partial class admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] == null && Session["PassWord"] == null)
                {

                    //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('sorry!您无权进行次操作，登陆超时或未登录，请登录验证'),window.location = './admin_signin_from.aspx'", true);
                    //Response.Redirect("./admin_signin_from.aspx");//跳转页面
                    Response.Write("<script language = javascript>alert('sorry!您无权进行次操作，登陆超时或未登录，请登录验证');location.href = './admin_signin_from.aspx';</script>");
                }
            }

        }
    }
}