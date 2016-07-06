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
    public partial class search_goods : System.Web.UI.Page
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
        
        public string show_num1 = "展品编号";
        public string show_name1 = "展品名称";
        public string show_creator1 = "作者 ID";
        public string show_type1 = "展品类型";
        public string show_title1 = " title信息";
        public string show_patent1 = "专 利 号";
        public string show_times1 = "日期";
        public string show_describe1 = "详细介绍";
        public string show_img_name1 = "图片名称";
        public string show_goods_img_address1 = "";
        public string image_search_url1 = "../images/png_mid.png";
        public string show_other1 = "备注信息";
        public int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                this.Image1.ImageUrl = image_search_url;
                this.Image1.ToolTip = show_img_name;
                this.Image2.ImageUrl = image_search_url1;
                this.Image2.ToolTip = show_img_name1;
                this.gDescribe.Value = show_describe1;
                //data_bind();
            }
            
        }

        protected void btn_search_ServerClick(object sender, EventArgs e) 
        {
            string search_type = choose05.Value.Trim();
            string get_content = Request["input_box1"].Trim();
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            try
            {
                if (search_type == "展品编号"){
                    if(get_content == ""){
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请输入查询内容(展品编号)，确认展品信息！！');", true);
                    }
                    conCon.Open();  //打开数据库连接
                    string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_id ='"+get_content+"'";
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


                }else if (search_type == "展品类型"){
                    string goodsType1 = choose01.Value.Trim();
                    string goodsType2 = choose02.Value.Trim();
                    string goodsType = goodsType1 + "，" + goodsType2;
                    if (goodsType1 == "1" || goodsType2 == "2")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请至少选择一种展品类型，确认展品信息！！');", true);
                    }
                    conCon.Open();
                    //string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_type ='" + goodsType + "'";
                    string sql = "SELECT * FROM goods_tb WHERE goods_type ='" + goodsType + "'";
                    SqlDataAdapter da = new SqlDataAdapter(sql, conCon);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "goods_tb");
                    GridView1.DataSource = ds;
                    GridView1.DataKeyNames = new string[] { "goods_id" };//主键
                    GridView1.DataBind();
                    //this.dd2.Style.Add("display", "block");
                    ClientScript.RegisterStartupScript(GetType(), "", "$('#select_box5 ul li:nth-child(2)').addClass('selected').siblings().removeClass('selected');$('#select_box5 .select_showbox').text('展品类型'); $('#choose05').val('展品类型'); $('#show_content .dd').hide(); $('#show_content .dd2').show();$('#input_box1').hide(); $('#select_box1').show(); $('#select_box2').show();", true);

                    conCon.Close();

                }else if (search_type == "专 利 号"){
                    if (get_content == "")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请输入查询内容（专利号），确认展品信息！！');", true);
                    }
                    conCon.Open();  //打开数据库连接
                    string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_patent_num ='" + get_content + "'";
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

                }else if (search_type == "作者 ID"){
                    if (get_content == "")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请输入查询内容（作者 ID），确认展品信息！！');", true);
                    }
                    conCon.Open();
                    //string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb ,users_tb WHERE goods_creator_id ='" + get_content + "'";
                    string sql = "SELECT * FROM goods_tb WHERE goods_creator_id ='" + get_content + "'";
                    SqlDataAdapter da = new SqlDataAdapter(sql, conCon);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "goods_tb");
                    GridView1.DataSource = ds;
                    GridView1.DataKeyNames = new string[] { "goods_id" };//主键
                    GridView1.DataBind();
                    conCon.Close();
                    ClientScript.RegisterStartupScript(GetType(), "", "$('#select_box5 ul li:nth-child(3)').addClass('selected').siblings().removeClass('selected');$('#select_box5 .select_showbox').text('作者 ID'); $('#choose05').val('作者 ID'); $('#show_content .dd').hide(); $('#show_content .dd2').show();$('#input_box1').show(); $('#select_box1').hide(); $('#select_box2').hide();", true);

                }
                else if (search_type == "作者名称")
                {
                    if (get_content == "")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请输入查询内容（作者名称），确认展品信息！！');", true);
                    }
                    conCon.Open();
                    //string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb ,users_tb WHERE u_name ='" + get_content + "' AND goods_tb.[goods_creator_id] = users_tb.[u_id]";
                    string sql = "SELECT * FROM goods_tb ,users_tb WHERE u_name ='" + get_content + "' AND goods_tb.[goods_creator_id] = users_tb.[u_id]";
                    SqlDataAdapter da = new SqlDataAdapter(sql, conCon);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "goods_tb");
                    count = ds.Tables[0].Rows.Count;  //统计查询结果个数
                    GridView1.DataSource = ds;
                    GridView1.DataKeyNames = new string[] { "goods_id" };//主键
                    GridView1.DataBind();
                    conCon.Close();
                    ClientScript.RegisterStartupScript(GetType(), "", "$('#select_box5 ul li:nth-child(4)').addClass('selected').siblings().removeClass('selected');$('#select_box5 .select_showbox').text('作者名称'); $('#choose05').val('作者名称'); $('#show_content .dd').hide(); $('#show_content .dd2').show();$('#input_box1').show(); $('#select_box1').hide(); $('#select_box2').hide();", true);
                }
                else //search_type = "查询所有" 时
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('执行此操作会跳转到展品浏览页面');window.location = '../web/search_allgoods.aspx'", true);
                    //Response.Redirect("../web/all_goods.aspx");
                    //ClientScript.RegisterStartupScript(GetType(), "Message", "<script>alert('执行此操作会跳转到展品浏览页面');window.location='../all_goods.aspx';</script>");
                }
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

        protected void btn_show_ServerClick(object sender, EventArgs e) 
        {
            string search_type = choose06.Value.Trim();
            string get_content = Request["input_box2"].Trim();
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            try
            {
                if (get_content == "")
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "$('ul.btn_tab li:nth-child(2)').addClass('current').siblings().removeClass('current'); $('#form_1 div.tabLeft').hide(); $('#form_2 div.tabRight').show();window.alert('请输入查询内容，确认展品信息！！');", true);
                }

                if (search_type == "展品编号")
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_id ='" + get_content + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    SqlDataReader dr;
                    dr = comText.ExecuteReader(); //结果集唯一
                    if (dr.Read())
                    {
                        show_num1 = dr["goods_id"].ToString();
                        show_name1 = dr["goods_name"].ToString();
                        show_creator1 = dr["goods_creator_id"].ToString();
                        show_type1 = dr["goods_type"].ToString();
                        show_title1 = dr["goods_title"].ToString();
                        show_patent1 = dr["goods_patent_num"].ToString();
                        show_times1 = dr["goods_times"].ToString();
                        show_describe1 = dr["goods_intro"].ToString();
                        show_img_name1 = dr["goods_img_name"].ToString();
                        show_goods_img_address1 = dr["goods_img_address"].ToString();
                        image_search_url1 = ".." + show_goods_img_address1;
                        show_other1 = dr["goods_other"].ToString();
                        this.Image2.ImageUrl = image_search_url1;
                        this.Image2.ToolTip = show_img_name1;
                        this.gDescribe.Value = show_describe1;
                        dr.Close();
                        ClientScript.RegisterStartupScript(GetType(), "", "$('ul.btn_tab li:nth-child(2)').addClass('current').siblings().removeClass('current'); $('#form_1 div.tabLeft').hide(); $('#form_2 div.tabRight').show();", true);
                    }
                    else
                    {
                        //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('无此查询结果，请重试');", true);
                        ClientScript.RegisterStartupScript(GetType(), "", "$('ul.btn_tab li:nth-child(2)').addClass('current').siblings().removeClass('current'); $('#form_1 div.tabLeft').hide(); $('#form_2 div.tabRight').show();window.alert('无此查询结果，请重试！！');", true);
                    }
                }
                else if (search_type == "专 利 号")
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_patent_num ='" + get_content + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    SqlDataReader dr;
                    dr = comText.ExecuteReader(); //结果集唯一
                    if (dr.Read())
                    {
                        show_num1 = dr["goods_id"].ToString();
                        show_name1 = dr["goods_name"].ToString();
                        show_creator1 = dr["goods_creator_id"].ToString();
                        show_type1 = dr["goods_type"].ToString();
                        show_title1 = dr["goods_title"].ToString();
                        show_patent1 = dr["goods_patent_num"].ToString();
                        show_times1 = dr["goods_times"].ToString();
                        show_describe1 = dr["goods_intro"].ToString();
                        show_img_name1 = dr["goods_img_name"].ToString();
                        show_goods_img_address1 = dr["goods_img_address"].ToString();
                        image_search_url1 = ".." + show_goods_img_address1;
                        show_other1 = dr["goods_other"].ToString();
                        this.Image2.ImageUrl = image_search_url1;
                        this.Image2.ToolTip = show_img_name1;
                        this.gDescribe.Value = show_describe1;
                        dr.Close();

                    }else{
                        //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('无此查询结果，请重试');", true);
                        ClientScript.RegisterStartupScript(GetType(), "", "$('ul.btn_tab li:nth-child(2)').addClass('current').siblings().removeClass('current'); $('#form_1 div.tabLeft').hide(); $('#form_2 div.tabRight').show();window.alert('无此查询结果，请重试');", true);
                    }

                }else {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('查询出错，请重试');", true);
                }
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

        protected void btn_edit_ServerClick(object sender, EventArgs e) 
        {
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);

            string goodsNumber = Request["gNumber"].Trim();//展品Id
            //imput type=text HTML标签中没有加runat="server"转换成服务器控件用Request["name属性"]获取输入的值
            string goodsName = Request["gName"].Trim();
            string goodsTitle = Request["gTitle"].Trim();
            string goodsType = Request["gType"].Trim();
            string goodsCreatorIdStr = Request["gCreator"].Trim();
            string goodsPatent = Request["gPatent"].Trim();

            string goodsDescribe = Request["gDescribe"].Trim();
            string goodsOther = Request["gMessage"].Trim();
            string goodsDatatimes = DateTime.Now.ToLocalTime().ToString();//update 时间暂时不计入数据库
            //图片更改
            string name = FileUpload1.FileName;       //获取文件名
            string type = name.Substring(name.LastIndexOf(".") + 1);    //获取文件类型
            string ipath = Server.MapPath("../images") + "\\" + name;    //获取文件路径
            //string wpath = "/images/" + name;        //设置文件保存相对路径
            string wpath = "/upload/images_goods/" + goodsNumber + name;        //设置文件保存相对路径
            string get_idshow = Request["gNumber"].Trim();
            try
            {
                if (goodsNumber == "展品编号")
                {
                    //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请先查找确认展品信息！！');", true);
                    ClientScript.RegisterStartupScript(GetType(), "", "$('ul.btn_tab li:nth-child(2)').addClass('current').siblings().removeClass('current'); $('#form_1 div.tabLeft').hide(); $('#form_2 div.tabRight').show();window.alert('请先查找确认展品信息！！');", true);
                }
                else if (FileUpload1.HasFile)
                {
                    string goodsImage = wpath;
                    string goodsImageName = name;
                    int goodsCreatorId = Int32.Parse(goodsCreatorIdStr);

                    if (type == "jpg" || type == "gif" || type == "bmp" || type == "png" || type == "jpeg" )
                    {
                        conCon.Open();  //打开数据库连接
                        string sql = "UPDATE goods_tb SET goods_name = '" + goodsName + "',goods_title = '" + goodsTitle + "',goods_type = '" + goodsType + "',goods_creator_id = '" + goodsCreatorId + "',goods_patent_num = '" + goodsPatent + "',goods_img_name = '" + goodsImageName + "',goods_img_address = '" + goodsImage + "',goods_intro = '" + goodsDescribe + "',goods_other = '" + goodsOther + "' WHERE goods_id = '" + goodsNumber + "'";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        comText.ExecuteNonQuery();  // 执行语句 
                        this.FileUpload1.SaveAs(Server.MapPath("~/upload/images_goods/" + goodsNumber + "" + name + ""));//保存图片,将图片上传到指定路径的文件夹     
                        //uppath = "~/upload/" + dataName + "." + type;  //将路径保存到变量，将该变量的值保存到数据库相应字段即可
                        string sqlStr = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_id ='" + get_idshow + "'";
                        SqlCommand comText2 = new SqlCommand(sqlStr, conCon);
                        SqlDataReader dr;
                        dr = comText2.ExecuteReader();
                        if (dr.Read())
                        {
                            show_num1 = dr["goods_id"].ToString();
                            show_name1 = dr["goods_name"].ToString();
                            show_creator1 = dr["goods_creator_id"].ToString();
                            show_type1 = dr["goods_type"].ToString();
                            show_title1 = dr["goods_title"].ToString();
                            show_patent1 = dr["goods_patent_num"].ToString();
                            show_times1 = dr["goods_times"].ToString();
                            show_describe1 = dr["goods_intro"].ToString();
                            show_img_name1 = dr["goods_img_name"].ToString();
                            show_goods_img_address1 = dr["goods_img_address"].ToString();
                            image_search_url1 = ".." + show_goods_img_address1;
                            show_other1 = dr["goods_other"].ToString();
                            this.Image2.ImageUrl = image_search_url1;
                            this.Image2.ToolTip = show_img_name1;
                            this.gDescribe.Value = show_describe1;
                        }
                        dr.Close();
                        //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品修改成功！！');", true);
                        ClientScript.RegisterStartupScript(GetType(), "", "$('ul.btn_tab li:nth-child(2)').addClass('current').siblings().removeClass('current'); $('#form_1 div.tabLeft').hide(); $('#form_2 div.tabRight').show();window.alert('展品修改成功！！');", true);

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('图片格式不对！！');", true);
                    }
                }
                else if (!FileUpload1.HasFile)
                {
                    int goodsCreatorId = Int32.Parse(goodsCreatorIdStr);

                    conCon.Open();  //打开数据库连接
                    string sql = "UPDATE goods_tb SET goods_name = '" + goodsName + "',goods_title = '" + goodsTitle + "',goods_type = '" + goodsType + "',goods_creator_id = '" + goodsCreatorId + "',goods_patent_num = '" + goodsPatent + "',goods_intro = '" + goodsDescribe + "',goods_other = '" + goodsOther + "' WHERE goods_id = '" + goodsNumber + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    comText.ExecuteNonQuery();  // 执行语句 
                    //this.FileUpload1.SaveAs(Server.MapPath("~/upload") + "\\" + dataName + "." + type);//将图片上传到指定路径的文件夹     
                    //uppath = "~/upload/" + dataName + "." + type;  //将路径保存到变量，将该变量的值保存到数据库相应字段即可
                    //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品修改成功！！');", true);
                    string sqlStr = "SELECT goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other FROM goods_tb WHERE goods_id ='" + get_idshow + "'";
                    SqlCommand comText2 = new SqlCommand(sqlStr, conCon);
                    SqlDataReader dr;
                    dr = comText2.ExecuteReader();
                    if (dr.Read())
                    {
                        show_num1 = dr["goods_id"].ToString();
                        show_name1 = dr["goods_name"].ToString();
                        show_creator1 = dr["goods_creator_id"].ToString();
                        show_type1 = dr["goods_type"].ToString();
                        show_title1 = dr["goods_title"].ToString();
                        show_patent1 = dr["goods_patent_num"].ToString();
                        show_times1 = dr["goods_times"].ToString();
                        show_describe1 = dr["goods_intro"].ToString();
                        show_img_name1 = dr["goods_img_name"].ToString();
                        show_goods_img_address1 = dr["goods_img_address"].ToString();
                        image_search_url1 = ".." + show_goods_img_address1;
                        show_other1 = dr["goods_other"].ToString();
                        this.Image2.ImageUrl = image_search_url1;
                        this.Image2.ToolTip = show_img_name1;
                        this.gDescribe.Value = show_describe1;
                    }
                    dr.Close();
                    //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品修改成功！！');", true);
                    ClientScript.RegisterStartupScript(GetType(), "", "$('ul.btn_tab li:nth-child(2)').addClass('current').siblings().removeClass('current'); $('#form_1 div.tabLeft').hide(); $('#form_2 div.tabRight').show();window.alert('展品修改成功！！');", true);
                }
                else　　//不成功提示上传失败
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('修改错误，请重试！！');", true);
                }

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString());", true);
            }
            finally
            {
                conCon.Close();   //关闭数据库链接
            }


        }

        protected void btn_delete_ServerClick(object sender, EventArgs e)
        {
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            string goodsNumber = Request["gNumber"].Trim();
            string goodsName = Request["gName"].Trim();
            try
            {
                if (goodsNumber == "展品编号")
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请先查找确认展品信息！！');", true);
                }
                else
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "DELETE FROM goods_tb WHERE goods_id = '" + goodsNumber + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    comText.ExecuteNonQuery();  // 执行语句 
                    this.Image2.ImageUrl = image_search_url1;
                    this.Image2.ToolTip = show_img_name1;
                    this.gDescribe.Value = show_describe1;

                    //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品删除成功！！');", true);
                    ClientScript.RegisterStartupScript(GetType(), "", "$('ul.btn_tab li:nth-child(2)').addClass('current').siblings().removeClass('current'); $('#form_1 div.tabLeft').hide(); $('#form_2 div.tabRight').show();window.alert('展品删除成功！！');", true);
                }

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString());", true);
            }
            finally
            {
                conCon.Close();   //关闭数据库链接
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;
            ClientScript.RegisterStartupScript(GetType(), "", "$('#show_content .dd').hide(); $('#show_content .dd2').show();", true);
            //data_bind();

        }



        //更新

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            conCon.Open();
            string sqlStr = "UPDATE goods_tb SET goods_id='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim() + "',goods_name='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim() + "',goods_type='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim() + "',goods_title='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim() + "',goods_creator_id='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim() + "',goods_img_name='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text.ToString().Trim() + "' WHERE goods_id='"

                + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";

            SqlCommand comText = new SqlCommand(sqlStr, conCon);
            comText.ExecuteNonQuery();
            conCon.Close();

            GridView1.EditIndex = -1;
            ClientScript.RegisterStartupScript(GetType(), "", "$('#select_box5 ul li:nth-child(2)').addClass('selected').siblings().removeClass('selected');$('#select_box5 .select_showbox').text('展品类型'); $('#choose05').val('展品类型'); $('#show_content .dd').hide(); $('#show_content .dd2').show();$('#input_box1').hide(); $('#select_box1').show(); $('#select_box2').show();", true);
            //data_bind();

        }
        //删除

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            conCon.Open();
            string sqlStr = "DELETE FROM goods_tb WHERE goods_id='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            SqlCommand comText = new SqlCommand(sqlStr, conCon);
            comText.ExecuteNonQuery();
            conCon.Close();
            ClientScript.RegisterStartupScript(GetType(), "", "$('#select_box5 ul li:nth-child(2)').addClass('selected').siblings().removeClass('selected');$('#select_box5 .select_showbox').text('展品类型'); $('#choose05').val('展品类型'); $('#show_content .dd').hide(); $('#show_content .dd2').show();$('#input_box1').hide(); $('#select_box1').show(); $('#select_box2').show();", true);
            //data_bind();

        }
        //取消

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;
            ClientScript.RegisterStartupScript(GetType(), "", "$('#select_box5 ul li:nth-child(2)').addClass('selected').siblings().removeClass('selected');$('#select_box5 .select_showbox').text('展品类型'); $('#choose05').val('展品类型'); $('#show_content .dd').hide(); $('#show_content .dd2').show();$('#input_box1').hide(); $('#select_box1').show(); $('#select_box2').show();", true);

            //data_bind();

        }


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //GridView实现自动编号

            if (e.Row.RowIndex != -1)
            {

                int id = e.Row.RowIndex + 1;

                e.Row.Cells[0].Text = id.ToString();

            }

            //鼠标移到GridView某一行时改变该行的背景色
            //首先判断是否是数据行

            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                //鼠标经过时，行背景色变

                //e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#E6F5FA'");
                //e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");

                //鼠标移出时，行背景色变

                //e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFFF'");


                //GridView实现删除时弹出确认对话框
                //如果是绑定数据行
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {

                    ((LinkButton)e.Row.Cells[8].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"吗?')");

                }
            }
        }

        //分页
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ClientScript.RegisterStartupScript(GetType(), "", "$('#select_box5 ul li:nth-child(2)').addClass('selected').siblings().removeClass('selected');$('#select_box5 .select_showbox').text('展品类型'); $('#choose05').val('展品类型'); $('#show_content .dd').hide(); $('#show_content .dd2').show();$('#input_box1').hide(); $('#select_box1').show(); $('#select_box2').show();", true);

            //data_bind();
        }        
        //绑定

        public void data_bind()
        {
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            conCon.Open();
            string sqlStr = "SELECT * FROM goods_tb";
            SqlDataAdapter da = new SqlDataAdapter(sqlStr, conCon);
            DataSet ds = new DataSet();
            da.Fill(ds, "goods_tb");
            GridView1.DataSource = ds;
            GridView1.DataKeyNames = new string[] { "goods_id" };//主键
            GridView1.DataBind();
            conCon.Close();

        }

    }
}