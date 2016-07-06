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
    public partial class users_manage : System.Web.UI.Page
    {
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
            if (!IsPostBack) 
            {
                this.Image1.ImageUrl = image_u_url;
                this.Image1.ToolTip = show_uimg_name;
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
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请输入查询内容，确认展品信息！！');", true);
                }
                if (search_type == "作者 ID")
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "SELECT u_id,u_name,u_type,u_address,u_phone,u_email,u_describe,u_img_name,u_img_address,u_datatimes,u_other FROM users_tb WHERE u_id ='" + get_content + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    SqlDataReader dr;
                    dr = comText.ExecuteReader(); //结果集唯一
                    if (dr.Read())
                    {
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
                        this.Image1.ImageUrl = image_u_url;
                        this.Image1.ToolTip = show_uimg_name;
                        this.uDescribe.Value = show_describeu;

                    }else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('无此查询结果，请重试');", true);
                    }
                }
                else if (search_type == "作者名称")
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "SELECT u_id,u_name,u_type,u_address,u_phone,u_email,u_describe,u_img_name,u_img_address,u_datatimes,u_other FROM users_tb WHERE u_name ='" + get_content + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    SqlDataReader dr;
                    dr = comText.ExecuteReader(); //结果集唯一
                    if (dr.Read())
                    {
                        show_idu = dr["u_id"].ToString();
                        show_nameu = dr["u_name"].ToString();
                        show_typeu = dr["u_type"].ToString();
                        show_addressu = dr["u_address"].ToString();
                        show_numu = dr["u_phone"].ToString();
                        show_emailu = dr["u_email"].ToString();
                        show_describeu = dr["u_describe"].ToString();
                        show_timesu = dr["u_datatimes"].ToString();

                        show_uimg_name = dr["u_img_name"].ToString();
                        image_u_url = dr["u_img_address"].ToString();
                        show_otheru = dr["u_other"].ToString();
                        this.Image1.ImageUrl = image_u_url;
                        this.Image1.ToolTip = show_uimg_name;
                        this.uDescribe.Value = show_describeu;

                    }else{
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('无此查询结果，请重试');", true);
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

            string uId = Request["uId"].Trim();//用户Id
            //imput type=text HTML标签中没有加runat="server"转换成服务器控件用Request["name属性"]获取输入的值
            string uName = Request["uName"].Trim();
            string uType = Request["uType"].Trim();
            string uAddress = Request["uAddress"].Trim();
            string uNumber = Request["uNumber"].Trim();
            string uEmail = Request["uEmail"].Trim();

            string uDescribe = Request["uDescribe"].Trim();
            string uOther = Request["uMessage"].Trim();
            string uDatatimes = DateTime.Now.ToLocalTime().ToString();//update 时间暂时不计入数据库
            //图片更改
            string name = FileUpload1.FileName;       //获取文件名
            string type = name.Substring(name.LastIndexOf(".") + 1);    //获取文件类型
            //string ipath = Server.MapPath("../images") + "\\" + name;    //获取文件路径
            string wpath = "/upload/images_users/" + name;        //[color=red]设置文件保存相对路径(这里的路径其实就是我们存放图片的文件夹名)[/color]

            try
            {
                if (uId == "作者 ID")
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请先查找确认用户信息！！');", true);
                }
                else if (FileUpload1.HasFile)
                {
                    string uImage = wpath;
                    string uImageName = name;

                    if (type == "jpg" || type == "gif" || type == "bmp" || type == "png" || type == "jpeg" )
                    {
                        conCon.Open();  //打开数据库连接
                        string sql = "UPDATE users_tb SET u_id = '"+uId+"',u_name = '" + uName + "',u_type = '" +uType + "',u_address = '" + uAddress + "',u_phone = '" + uNumber + "',u_email = '" + uEmail + "',u_img_name = '" + uImageName + "',u_img_address = '" + uImage + "',u_describe = '" + uDescribe + "',u_other = '" + uOther + "' WHERE u_id = '" + uId + "'";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        comText.ExecuteNonQuery();  // 执行语句 
                        this.FileUpload1.SaveAs(Server.MapPath("~/upload/images_users/" + name + ""));//将图片上传到指定路径的文件夹     
                        //uppath = "~/upload/" + dataName + "." + type;  //将路径保存到变量，将该变量的值保存到数据库相应字段即可
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('信息修改成功！！');", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('图片格式不对！！');", true);
                    }
                }
                else if (!FileUpload1.HasFile)
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "UPDATE users_tb SET u_id = '" + uId + "',u_name = '" + uName + "',u_type = '" + uType + "',u_address = '" + uAddress + "',u_phone = '" + uNumber + "',u_email = '" + uEmail + "',u_describe = '" + uDescribe + "',u_other = '" + uOther + "' WHERE u_id = '" + uId + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    comText.ExecuteNonQuery();  // 执行语句 
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('信息修改成功！！');", true);
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
            try
            {
                string uId = Request["uId"].Trim();//用户Id
                if (uId == "作者 ID")
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请先查找确认展品信息！！');", true);
                }
                else
                {
                    conCon.Open();  //打开数据库连接
                    string sql = "DELETE FROM users_tb WHERE u_id = '" + uId + "'";
                    SqlCommand comText = new SqlCommand(sql, conCon);
                    comText.ExecuteNonQuery();  // 执行语句 

                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('用户信息删除成功！！');", true);

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

    }
}