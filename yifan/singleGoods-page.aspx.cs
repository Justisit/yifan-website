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
    public partial class singleGoods_page : System.Web.UI.Page
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
        public string upvote = "0";   //点赞数量

        public string show_nameu = "作者名称";
        public string show_idu = "作者 ID";
        public string show_typeu = "部门职位";
        public string show_addressu = "居住地址";
        public string show_timesu = "修改日期";
        public string show_numu = "联系电话";
        public string show_emailu = "邮箱地址";
        public string show_describeu = "详细介绍";

        public string image_u_url = "../images/png_mid.png";
        public string show_otheru = "备注信息";
        public int count = 0;
        string show_uimg_name = "默认图片";

        protected void Page_Load(object sender, EventArgs e)
        {
            string goodsNum = Request.QueryString["goodsNum"];

            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);

            if (goodsNum == "-1")
            {
                this.Image1.ImageUrl = image_search_url;
                this.Image1.ToolTip = show_img_name;
                this.Image2.ImageUrl = image_u_url;
                this.Image2.ToolTip = show_uimg_name;
                this.Image3.ImageUrl = image_search_url;
                this.Image3.ToolTip = show_img_name;

            }
            else
            {
                try
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other,upvote,u_id,u_name,u_type,u_address,u_phone,u_email,u_describe,u_img_name,u_img_address,u_datatimes,u_other FROM goods_tb, users_tb WHERE goods_id ='" + goodsNum + "' AND goods_tb.[goods_creator_id] = users_tb.[u_id]";
                    //string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_id ='" + goodsNum + "'";
                    
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
                    upvote = dr["upvote"].ToString();
                    this.Image1.ImageUrl = image_search_url;
                    this.Image1.ToolTip = show_img_name;

                    show_idu = dr["u_id"].ToString();
                    show_nameu = dr["u_name"].ToString();
                    show_typeu = dr["u_type"].ToString();
                    show_addressu = dr["u_address"].ToString();
                    show_timesu = dr["u_datatimes"].ToString();
                    show_numu = dr["u_phone"].ToString();
                    show_emailu = dr["u_email"].ToString();
                    show_describeu = dr["u_describe"].ToString();
                    show_uimg_name = dr["u_img_name"].ToString();
                    image_u_url = dr["u_img_address"].ToString();
                    show_otheru = dr["u_other"].ToString();
                    this.Image2.ImageUrl = image_u_url;
                    this.Image2.ToolTip = show_uimg_name;

                    this.Image3.ImageUrl = image_search_url;
                    this.Image3.ToolTip = show_img_name;
                    dr.Close();

                    //string sqlu = "SELECT u_id,u_name,u_type,u_address,u_phone,u_email,u_describe,u_img_name,u_img_address,u_datatimes,u_other FROM users_tb WHERE u_id ='" + show_creator + "'";
                    //SqlCommand comTextu = new SqlCommand(sqlu, conCon);
                    //SqlDataReader dru;
                    //dru = comTextu.ExecuteReader(); //结果集唯一
                    //if (dru.Read())
                    //{
                    //    show_idu = dr["u_id"].ToString();
                    //    show_nameu = dr["u_name"].ToString();
                    //    show_typeu = dr["u_type"].ToString();
                    //    show_addressu = dr["u_address"].ToString();
                    //    show_timesu = dr["u_datatimes"].ToString();
                    //    show_numu = dr["u_phone"].ToString();
                    //    show_emailu = dr["u_email"].ToString();
                    //    show_describeu = dr["u_describe"].ToString();

                    //    show_uimg_name = dr["u_img_name"].ToString();
                    //    image_u_url = dr["u_img_address"].ToString();
                    //    show_otheru = dr["u_other"].ToString();
                    //    this.Image2.ImageUrl = image_u_url;
                    //    this.Image2.ToolTip = show_uimg_name;
                    //}
                    //dru.Close();
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString()');", true);
                }
                finally
                {
                    conCon.Close();
                }
            }

        }
    }
}