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
    public partial class allGoods_page : System.Web.UI.Page
    {
        public ArrayList goodsName = new ArrayList(40);   //goods name
        public ArrayList goodsUrl = new ArrayList(40);   //name 和图片中的a 链接
        public ArrayList goodsImg = new ArrayList(40);   //img 图片的src
        public ArrayList titleStr = new ArrayList(40);   //goods的title信息
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int count;
                string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
                SqlConnection conCon = new SqlConnection(conStr);
                conCon.Open();  //打开数据库连接
                string sqlStr = "SELECT TOP 40 * FROM goods_tb ORDER BY goods_id DESC";
                string sqlC = "SELECT COUNT(*) AS count FROM goods_tb";
                SqlCommand comText = new SqlCommand(sqlStr, conCon);
                SqlDataReader dr;
                dr = comText.ExecuteReader(); //结果集唯一
                while (dr.Read())
                {
                        goodsName.Add(dr["goods_name"].ToString());
                        goodsUrl.Add("singleGoods-page.aspx?goodsNum=" + dr["goods_id"].ToString());
                        goodsImg.Add(dr["goods_img_address"].ToString());
                        titleStr.Add(dr["goods_title"].ToString());
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
                conCon.Close();
                if(count % 40 !=0){
                    count = count/40 + 1;
                }
                else
                {
                    count = count / 40;
                }
                this.numHideId.Value = count.ToString();
                //for (int i = 0; i < goodsUrl.Capacity; i++)
                //{
                //    goodsName.Add("test data ");
                //    goodsUrl.Add("singleGoods-page.aspx?goodsNum=-1");
                //    if (i % 2 == 0)
                //    {
                //        goodsImg.Add("images/test01.jpg");
                //    }
                //    else
                //    {
                //        goodsImg.Add("images/test02.jpg");
                //    }
                //    titleStr.Add("text data for goods title message");
                //}
            }
        }
        protected void btn_nextPage_ServerClick(object sender, EventArgs e)
        {
            int pageCount = Int32.Parse(this.pageCount.Text.Trim());   //页码label值
            int startNum = pageCount*40;
            int endNum = 40; 
            goodsName.Clear();   //goods name
            goodsUrl.Clear();   //name 和图片中的a 链接
            goodsImg.Clear();   //img 图片的src
            titleStr.Clear();   //goods的title信息

            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);

            try
            {
                conCon.Open();  //打开数据库连接
                string allStr = "SELECT COUNT(*) AS counta FROM goods_tb";
                SqlCommand comText_a = new SqlCommand(allStr, conCon);
                SqlDataReader dr_a;
                dr_a = comText_a.ExecuteReader(); //结果集唯一
                dr_a.Read();
                int counta = Int32.Parse(dr_a["counta"].ToString());
                dr_a.Close();
                if (counta > ((pageCount + 1) * 40))
                {
                    string sqlStr = "SELECT b.* FROM (SELECT TOP " + endNum + " a.* FROM (SELECT TOP " + startNum + " * FROM goods_tb ORDER BY goods_id DESC ) a ORDER by a.[goods_id] DESC ) b ORDER BY b.[goods_id]";
                    SqlCommand comText = new SqlCommand(sqlStr, conCon);
                    SqlDataReader dr;
                    dr = comText.ExecuteReader(); //结果集唯一
                    while (dr.Read())
                    {
                        goodsName.Add(dr["goods_name"].ToString());
                        goodsUrl.Add("singleGoods-page.aspx?goodsNum=" + dr["goods_id"].ToString());
                        goodsImg.Add(dr["goods_img_address"].ToString());
                        titleStr.Add(dr["goods_title"].ToString());
                    }
                    dr.Close();
                    this.pageCount.Text = (pageCount + 1).ToString();
                }
                else if(counta > (pageCount * 40) && counta <= ((pageCount + 1) * 40))
                {
                    string sqlStr = "SELECT b.* FROM (SELECT TOP " + endNum + " a.* FROM (SELECT TOP " + startNum + " * FROM goods_tb ORDER BY goods_id DESC ) a ORDER by a.[goods_id] DESC ) b ORDER BY b.[goods_id]";
                    SqlCommand comText = new SqlCommand(sqlStr, conCon);
                    SqlDataReader dr;
                    dr = comText.ExecuteReader(); //结果集唯一
                    while (dr.Read())
                    {
                        goodsName.Add(dr["goods_name"].ToString());
                        goodsUrl.Add("singleGoods-page.aspx?goodsNum=" + dr["goods_id"].ToString());
                        goodsImg.Add(dr["goods_img_address"].ToString());
                        titleStr.Add(dr["goods_title"].ToString());
                    }
                    dr.Close();
                    this.pageCount.Text = (pageCount + 1).ToString();
                    //ClientScript.RegisterStartupScript(GetType(), "", "$('.posts-nav a.next').addClass('post-disabled'); $('.posts-nav a.next').removeAttr('onserverclick');", true);
                }
                else
                {
                    for (int i = 0; i < (40); i++)
                    {
                        goodsName.Add("name");
                        goodsUrl.Add("singleGoods-page.aspx?goodsNum=-1");
                        goodsImg.Add("images/png_mid.png");
                        titleStr.Add("text data for title message");
                    }
                    ClientScript.RegisterStartupScript(GetType(), "", "$('.posts-nav a.next').addClass('post-disabled'); $('.posts-nav a.next').removeAttr('onserverclick');window.alert('sorry there is no more goods !!');", true);
                }
                    //string cStr = "SELECT COUNT(*) AS count FROM (SELECT TOP " + endNum + " a.* FROM (SELECT TOP " + startNum + " * FROM goods_tb ORDER BY goods_id DESC ) a ORDER by a.[goods_id] DESC ) b ORDER BY b.[goods_id]";
                    //SqlCommand comText_c = new SqlCommand(cStr, conCon);
                    //SqlDataReader dr_c;
                    //dr_c = comText_c.ExecuteReader(); //结果集唯一
                    //dr_c.Read();
                    //int count = Int32.Parse(dr_c["count"].ToString());
                    //dr_c.Close();
                    //if (count == 0)
                    //{
                    //    this.pageCount.Text = pageCount.ToString();
                    //    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('sorry it's no more goods !!');", true);
                    //}
            //        if (count == 40)
            //        {
            //        string sqlStr = "SELECT b.* FROM (SELECT TOP " + endNum + " a.* FROM (SELECT TOP " + startNum + " * FROM goods_tb ORDER BY goods_id DESC ) a ORDER by a.[goods_id] DESC ) b ORDER BY b.[goods_id]";
            //        SqlCommand comText = new SqlCommand(sqlStr, conCon);
            //        SqlDataReader dr;
            //        dr = comText.ExecuteReader(); //结果集唯一
            //        while (dr.Read())
            //        {
            //            goodsName.Add(dr["goods_name"].ToString());
            //            goodsUrl.Add("singleGoods-page.aspx?goodsNum=" + dr["goods_id"].ToString());
            //            goodsImg.Add(dr["goods_img_address"].ToString());
            //            titleStr.Add(dr["goods_title"].ToString());
            //        }
            //        dr.Close();
            //        this.pageCount.Text = (pageCount + 1).ToString();
            //        ClientScript.RegisterStartupScript(GetType(), "", "$('.posts-nav a.next').addClass('post-disabled'); $('.posts-nav a.next').removeAttr('onserverclick');", true);
            //        }
            //        else if (count > 0 && (count - 40) < 0)
            //        {
            //            //string sql = "SELECT * FROM goods_tb ORDER BY goods_id desc";
            //            string sqlStr = "SELECT b.* FROM (SELECT TOP '" + endNum + "' a.* FROM (SELECT TOP '" + startNum + " * FROM goods_tb ORDER BY goods_id DESC ) a ORDER by a.[goods_id] DESC ) b ORDER BY b.[goods_id]";
            //            SqlCommand comText = new SqlCommand(sqlStr, conCon);
            //            SqlDataReader dr;
            //            dr = comText.ExecuteReader(); //结果集唯一
            //            while (dr.Read())
            //            {
            //                    goodsName.Add(dr["goods_name"].ToString());
            //                    goodsUrl.Add("singleGoods-page.aspx?goodsNum=" + dr["goods_id"].ToString());
            //                    goodsImg.Add(dr["goods_img_address"].ToString());
            //                    titleStr.Add(dr["goods_title"].ToString());
            //            }
            //            if (count < 40)
            //            {
            //                for (int i = 0; i < (40 - count); i++)
            //                {
            //                    goodsName.Add("name");
            //                    goodsUrl.Add("singleGoods-page.aspx?goodsNum=-1");
            //                    goodsImg.Add("images/png_mid.png");
            //                    titleStr.Add("text data for title message");
            //                }
            //            }
            //            dr.Close();
            //            this.pageCount.Text += 1;
            //            ClientScript.RegisterStartupScript(GetType(), "", "$('.posts-nav a.next').addClass('post-disabled'); $('.posts-nav a.next').removeAttr('onserverclick');window.alert('sorry it's no more goods !!')", true);
            //        }
            //        else
            //        {
            //            ClientScript.RegisterStartupScript(GetType(), "", "window.alert('sorry unknown error happened!!');", true);
            //        }
            //    }
            //    else if (counta <= (pageCount * 40))
            //    {
            //        this.pageCount.Text = pageCount.ToString();
            //        ClientScript.RegisterStartupScript(GetType(), "", "$('.posts-nav a.next').addClass('post-disabled'); $('.posts-nav a.next').removeAttr('onserverclick');window.alert('sorry it's no more goods !!')", true);
            //        //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('sorry it's no more goods !!');", true);
            //    }
            //    else
            //    {
            //        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('sorry unknown error happened!!');", true);
            //    }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + ".Message.ToString()');", true);
            }
            finally
            {
                conCon.Close();
            }
        }
        protected void btn_prePage_ServerClick(object sender, EventArgs e)
        {
            int pageCount = Int32.Parse(this.pageCount.Text.Trim());   //页码label值
            int startNum = (pageCount - 1) * 40;
            int endNum = 40;
            goodsName = new ArrayList(40);   //goods name
            goodsUrl = new ArrayList(40);   //name 和图片中的a 链接
            goodsImg = new ArrayList(40);   //img 图片的src
            titleStr = new ArrayList(40);   //goods的title信息

            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            if (pageCount >= 1)
            {
                try
                {
                    conCon.Open();  //打开数据库连接
                    //string sql = "SELECT * FROM goods_tb ORDER BY goods_id desc";
                    string sqlStr = "SELECT b.* FROM (SELECT TOP " + endNum + " a.* FROM (SELECT TOP " + startNum + " * FROM goods_tb ORDER BY goods_id DESC ) a ORDER by a.[goods_id] DESC ) b ORDER BY b.[goods_id]";
                    SqlCommand comText = new SqlCommand(sqlStr, conCon);
                    SqlDataReader dr;
                    dr = comText.ExecuteReader(); //结果集唯一
                    while (dr.Read())
                    {
                        goodsName.Add(dr["goods_name"].ToString());
                        goodsUrl.Add("singleGoods-page.aspx?goodsNum=" + dr["goods_id"].ToString());
                        goodsImg.Add(dr["goods_img_address"].ToString());
                        titleStr.Add(dr["goods_title"].ToString());
                    }
                    dr.Close();
                    this.pageCount.Text = (pageCount-1).ToString();
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
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('this is the first page!!');", true);
            }
        }

    }
}