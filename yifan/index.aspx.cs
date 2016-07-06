using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace yifan
{
    public partial class index : System.Web.UI.Page
    {
        public ArrayList goodsName = new ArrayList(40);   //goods name
        public ArrayList goodsUrl = new ArrayList(40);   //name 和图片中的a 链接
        public ArrayList goodsImg = new ArrayList(40);   //img 图片的src
        public ArrayList titleStr = new ArrayList(40);   //goods的title信息
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //sql server windows身份验证
                string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
                SqlConnection conCon = new SqlConnection(conStr);

                string[] imgUrl = new string[6];
                string[] imgTitle = new string[6];
                int count;
                try
                {
                    conCon.Open();  //打开数据库连接
                    for (int i = 0; i < 6; i++)
                    {
                        string sql = "SELECT pic_address,pic_title FROM pic_slide WHERE pic_id = '"+ i +"'";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        SqlDataReader dr;
                        dr = comText.ExecuteReader();
                        if (dr.Read())
                        {
                            imgUrl[i] = dr["pic_address"].ToString(); //图片src属性值
                            imgTitle[i] = dr["pic_title"].ToString(); //图片title属性
                        }
                        dr.Close();
                    }
                    string sqlStr = "SELECT TOP 40 * FROM goods_tb ORDER BY goods_id DESC";
                    string sqlC = "SELECT COUNT(*) AS count FROM goods_tb";
                    SqlCommand comTextA = new SqlCommand(sqlStr, conCon);
                    SqlDataReader drA;
                    drA = comTextA.ExecuteReader(); //结果集唯一
                    while (drA.Read())
                    {
                        goodsName.Add(drA["goods_name"].ToString());
                        goodsUrl.Add("singleGoods-page.aspx?goodsNum=" + drA["goods_id"].ToString());
                        goodsImg.Add(drA["goods_img_address"].ToString());
                        titleStr.Add(drA["goods_title"].ToString());
                    }
                    drA.Close();
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
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('"+ex+"'.Message.ToString())</script>");
                }
                finally
                {
                    conCon.Close();   //关闭数据库链接
                }
                this.Image1.ImageUrl = imgUrl[0];
                this.Image1.ToolTip = imgTitle[0];

                this.Image2.ImageUrl = imgUrl[1];
                this.Image2.ToolTip = imgTitle[1];

                this.Image3.ImageUrl = imgUrl[2];
                this.Image3.ToolTip = imgTitle[2];

                this.Image4.ImageUrl = imgUrl[3];
                this.Image4.ToolTip = imgTitle[3];

                this.Image5.ImageUrl = imgUrl[4];
                this.Image5.ToolTip = imgTitle[4];

                this.Image6.ImageUrl = imgUrl[5];
                this.Image6.ToolTip = imgTitle[5];

            }
        }
    }
}