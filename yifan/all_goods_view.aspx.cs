using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Web.Services;
namespace yifan
{
    public partial class goods_view : System.Web.UI.Page
    {
        public ArrayList goodsName = new ArrayList(40);   //goods name
        public ArrayList goodsUrl = new ArrayList(40);   //name 和图片中的a 链接
        public ArrayList goodsImg = new ArrayList(40);   //img 图片的src
        public ArrayList titleStr = new ArrayList(40);   //goods的title信息
        public ArrayList creatorName = new ArrayList(40);
        public ArrayList creatorDescribe = new ArrayList(40);
        //public ArrayList goodsReview = new ArrayList(40);
        public ArrayList dataTimes = new ArrayList(40);

        public ArrayList goodsNameV = new ArrayList(40);   //goods name
        public ArrayList goodsUrlV = new ArrayList(40);   //name 和图片中的a 链接
        public ArrayList goodsImgV = new ArrayList(40);   //img 图片的src
        public ArrayList titleStrV = new ArrayList(40);   //goods的title信息
        public ArrayList dataTimesV = new ArrayList(40);
        public ArrayList upvote = new ArrayList(40);   //点赞数量
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int count;
                string likeNum = Context.Request["like"];
                string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
                SqlConnection conCon = new SqlConnection(conStr);
                conCon.Open();  //打开数据库连接
                string sqlV = "SELECT TOP 10 * FROM goods_tb ORDER BY upvote DESC, goods_id ASC";
                string sqlStr = "SELECT TOP 40 * FROM goods_tb,users_tb WHERE goods_tb.[goods_creator_id] = users_tb.[u_id] ORDER BY goods_id DESC";
                string sqlC = "SELECT COUNT(*) AS count FROM goods_tb";
                SqlCommand comTextV = new SqlCommand(sqlV, conCon);
                SqlDataReader drV;
                drV = comTextV.ExecuteReader(); //结果集唯一
                while (drV.Read())
                {
                    goodsNameV.Add(drV["goods_name"].ToString());
                    goodsUrlV.Add("singleGoods-page.aspx?goodsNum=" + drV["goods_id"].ToString());
                    goodsImgV.Add(drV["goods_img_address"].ToString());
                    titleStrV.Add(drV["goods_title"].ToString());
                    dataTimesV.Add(drV["goods_times"].ToString());
                    upvote.Add(drV["upvote"].ToString());
                }
                drV.Close();

                SqlCommand comText = new SqlCommand(sqlStr, conCon);
                SqlDataReader dr;
                dr = comText.ExecuteReader(); //结果集唯一
                while (dr.Read())
                {
                    goodsName.Add(dr["goods_name"].ToString());
                    goodsUrl.Add("singleGoods-page.aspx?goodsNum=" + dr["goods_id"].ToString());
                    goodsImg.Add(dr["goods_img_address"].ToString());
                    titleStr.Add(dr["goods_title"].ToString());
                    creatorName.Add(dr["u_name"].ToString());
                    creatorDescribe.Add(dr["u_describe"].ToString());
                    dataTimes.Add(dr["u_datatimes"].ToString());
                }
                dr.Close();
                SqlCommand comText_c = new SqlCommand(sqlC, conCon);
                SqlDataReader dr_c;
                dr_c = comText_c.ExecuteReader(); //结果集唯一
                dr_c.Read();
                count = Int32.Parse(dr_c["count"].ToString());
                if (count < 40)
                {
                    for (int i = 0; i < (40 - count); i++)
                    {
                        goodsName.Add("name");
                        goodsUrl.Add("singleGoods-page.aspx?goodsNum=-1");
                        goodsImg.Add("images/png_mid.png");
                        titleStr.Add("text data for title message");
                    }
                }
                dr_c.Close();
                conCon.Close();
            }
        }
    }
}