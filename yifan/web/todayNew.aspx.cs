using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yifan.web
{
    public partial class todayNew : System.Web.UI.Page
    {
        public string show_num = "展品编号";
        public string show_name = "展品名称";
        public string show_creator = "作者 ID";
        public string show_type = "展品类型";
        public string show_title = " title信息";
        public string show_patent = "专 利 号";
        public string show_times = "日期";
        public string show_describe = "详细介绍";
        public string show_img_name = "图片名称";
        public string show_goods_img_address = "";
        public string image_search_url = "../images/png_mid.png";
        public string show_other = "备注信息";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
                SqlConnection conCon = new SqlConnection(conStr);
                try
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_id ='todayIsAGoodDay'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    SqlDataReader dr;
                    dr = comText.ExecuteReader(); //结果集唯一
                    dr.Read();
                    show_num = dr["goods_id"].ToString();
                    show_name = dr["goods_name"].ToString();
                    show_creator = dr["goods_creator_id"].ToString();
                    show_type = dr["goods_type"].ToString();
                    show_title = dr["goods_title"].ToString();
                    show_patent = dr["goods_patent_num"].ToString();
                    show_times = dr["goods_times"].ToString();
                    show_describe = dr["goods_intro"].ToString();
                    show_img_name = dr["goods_img_name"].ToString();
                    show_goods_img_address = dr["goods_img_address"].ToString();
                    image_search_url = ".." + show_goods_img_address;
                    show_other = dr["goods_other"].ToString();
                    this.Image1.ImageUrl = image_search_url;
                    this.Image1.ToolTip = show_img_name;
                    //this.gDescribe.Value = show_describe;
                    dr.Close();
                    conCon.Close();
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString()');", true);
                }
                finally
                {
                    conCon.Close();   //关闭数据库链接
                }
            }
        }
    }
}