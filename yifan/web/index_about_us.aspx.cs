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
    public partial class index_about_us : System.Web.UI.Page
    {
        public string bk_img1 = "../../images/onepiece/together forever.png";
        public string bk_img2 = "../../images/onepiece/We are partners.png";
        public string bk_img3 = "../../images/onepiece/onepiece_colorful.png";
        public string bk_img4 = "../../images/onepiece/weareateam.png";
        public string bk_img5 = "../../images/onepiece/inthesunshine.png";
        public string bk_img6 = "../../images/onepiece/memory forGoing Merry.png";

        public string hMessage1 = "Failure is the mother of success. - Thomas Paine";
        public string hMessage2 = "Live beautifully, dream passionately, love completely.";
        public string hMessage3 = "A man's best friends are his ten fingers.";
        public string hMessage4 = "All things in their being are good for something.";
        public string hMessage5 = "The world is like a mirror: Frown at itand it frowns at you; smile, and it smiles too.";
        public string hMessage6 = "while there is life, there is hope";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //sql server windows身份验证
                string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
                SqlConnection conCon = new SqlConnection(conStr);

                string[] imgUrl = new string[6];
                string[] imgTitle = new string[6];
                try
                {
                    conCon.Open();  //打开数据库连接
                    for (int i = 0; i < 6; i++)
                    {
                        int j = i + 6;
                        string sql = "SELECT pic_address,pic_title FROM pic_slide WHERE pic_id = '" + j + "'";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        SqlDataReader dr;
                        dr = comText.ExecuteReader();
                        if (dr.Read())
                        {
                            imgUrl[i] = dr["pic_address"].ToString(); //图片src属性值
                            imgTitle[i] = dr["pic_title"].ToString(); //图片title属性
                            dr.Close();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex + "'.Message.ToString())</script>");
                }
                finally
                {
                    conCon.Close();   //关闭数据库链接
                }
                this.bk_img1 = "../.." + imgUrl[0];
                this.hMessage1 = imgTitle[0];
                this.bk_img2 = "../.." + imgUrl[1];
                this.hMessage2 = imgTitle[1];
                this.bk_img3 = "../.." + imgUrl[2];
                this.hMessage3 = imgTitle[2];
                this.bk_img4 = "../.." + imgUrl[3];
                this.hMessage4 = imgTitle[3];
                this.bk_img5 = "../.." + imgUrl[4];
                this.hMessage5 = imgTitle[4];
                this.bk_img6 = "../.." + imgUrl[5];
                this.hMessage6 = imgTitle[5];

            }
        }
    }
}