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
    public partial class add_goods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_add_Click(object sender, EventArgs e)
        {
            //sql server windows身份验证
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";

            SqlConnection conCon = new SqlConnection(conStr);

            string goodsNumber = DateTime.Now.ToString("yyyyMMddhhmmss");//展品Id自动以时间作为展品的名字可以防止展品重名

            //imput type=text HTML标签中没有加runat="server"转换成服务器控件用Request["name属性"]获取输入的值
            string goodsName = Request["gName"].Trim();
            string goodsTitle = Request["gTitle"].Trim();
            //html select控件（加上runat="server"）selectid.Items[selectid.SelectedIndex].Text获取文本值，用selectid.Items[secletid.SelectedIndex].Value获取value值
            string goodsType1 = choose01.Value.Trim();
            string goodsType2 = choose02.Value.Trim();
            string goodsType = goodsType1 + "，" + goodsType2;
            string goodsCreatorIdStr = Request["gCreator"].Trim();
            string goodsPatent = Request["gPatent"].Trim();
            string goodsImage = "images/png_mid.png";//默认图片地址
            string goodsDescribe = Request["gDescribe"].Trim();
            string goodsOther = Request["gMessage"].Trim();
            string goodsDatatimes = DateTime.Now.ToLocalTime().ToString();
            string checkbox_checked = Request["checkbox1"];
            string name = FileUpload1.FileName;       //获取文件名(浏览器安全限制含扩展名)
            string type = name.Substring(name.LastIndexOf(".") + 1);    //获取文件类型
            //string ipath = Server.MapPath("../images") + "\\" + name;    //获取文件路径
            //string wpath = "/images/" + name;        //设置文件保存相对路径
            string wpath = "/upload/images_goods/" + goodsNumber + name;        //设置文件保存相对路径
            string goodsImageName = "默认图片！";
            Boolean isOnly = true;

            try
            {
                if (goodsName == "" || goodsTitle == "" || goodsCreatorIdStr == "" || goodsDescribe == "")
                {

                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('带*项为必填项，请输入相应信息！！');", true);
                    //Response.Write("<script>alert('带*项为必填项，请输入相应信息！')</script>");//执行提交操作，弹出消息框后，页面的样式变乱
                }
                else if (goodsType1 == "1" && goodsType2 == "2")
                {

                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('请至少选择一种展品类型！！');", true);
                }
                else
                {
                    int goodsCreatorId = Int32.Parse(goodsCreatorIdStr);
                    conCon.Open();  //打开数据库连接
                    string validateSql = "SELECT * FROM goods_tb WHERE goods_name = '" + goodsName + "' and goods_type = '" + goodsType + "' and goods_creator_id = '" + goodsCreatorId + "' and goods_patent_num = '" + goodsPatent + "'";
                    SqlCommand comTextV = new SqlCommand(validateSql, conCon);
                    SqlDataReader dr;
                    dr = comTextV.ExecuteReader();
                    if (dr.Read())    //判断SQL执行登录是否成功，成功执行下面语句
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品已经存在！！（请勿刷新！）');", true);
                        isOnly = false;
                    }
                    dr.Close();
                }

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + ".Message.ToString()');", true);
            }
            finally
            {
                conCon.Close();   //关闭数据库链接
            }

            try
            {
                if (FileUpload1.HasFile && isOnly == true)
                {
                    goodsImage = wpath;
                    goodsImageName = name;
                    int goodsCreatorId = Int32.Parse(goodsCreatorIdStr);

                    if (type == "jpg" || type == "gif" || type == "bmp" || type == "png" || type == "jpeg" && checkbox_checked != null)
                    {

                        conCon.Open();  //打开数据库连接
                        string sql = "INSERT INTO goods_tb (goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other) VALUES ('" + goodsNumber + "','" + goodsName + "','" + goodsTitle + "','" + goodsType + "','" + goodsCreatorId + "','" + goodsPatent + "','" + goodsImageName + "','" + goodsImage + "','" + goodsDescribe + "','" + goodsDatatimes + "','" + goodsOther + "')";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        comText.ExecuteNonQuery();  // 执行语句 
                        this.FileUpload1.SaveAs(Server.MapPath("~/upload/images_goods/" + goodsNumber + "" + name + ""));//保存图片,将图片上传到指定路径的文件夹     
                        //uppath = "~/upload/" + dataName + "." + type;  //将路径保存到变量，将该变量的值保存到数据库相应字段即可
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品添加成功！！');", true);
                    }
                    else if (type == "jpg" || type == "gif" || type == "bmp" || type == "png" || type == "jpeg" && checkbox_checked == null)
                    {

                        conCon.Open();  //打开数据库连接
                        string sql = "INSERT INTO goods_tb (goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_other) VALUES ('" + goodsNumber + "','" + goodsName + "','" + goodsTitle + "','" + goodsType + "','" + goodsCreatorId + "','" + goodsPatent + "','" + goodsImageName + "','" + goodsImage + "','" + goodsDescribe + "','" + goodsOther + "')";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        comText.ExecuteNonQuery();  // 执行语句 
                        this.FileUpload1.SaveAs(Server.MapPath("~/upload/images_goods/" + goodsNumber + "" + name + ""));//保存图片,将图片上传到指定路径的文件夹     
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品添加成功！！');", true);
                    }
                }
                else if (! FileUpload1.HasFile &&isOnly == true)
                {
                    int goodsCreatorId = Int32.Parse(goodsCreatorIdStr);

                    if (checkbox_checked != null)
                    {
                        conCon.Open();  //打开数据库连接
                        string sql = "INSERT INTO goods_tb (goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_times,goods_other) VALUES ('" + goodsNumber + "','" + goodsName + "','" + goodsTitle + "','" + goodsType + "','" + goodsCreatorId + "','" + goodsPatent + "','" + goodsImageName + "','" + goodsImage + "','" + goodsDescribe + "','" + goodsDatatimes + "','" + goodsOther + "')";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        comText.ExecuteNonQuery();  // 执行语句 
                        //this.FileUpload1.SaveAs(Server.MapPath("~/upload/image_touxiang/" + goodsNumber + "" + name + ""));//将图片上传到指定路径的文件夹     
                        //uppath = "~/upload/" + dataName + "." + type;  //将路径保存到变量，将该变量的值保存到数据库相应字段即可
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品添加成功！！');", true);
                    }
                    else if (checkbox_checked == null)
                    {

                        conCon.Open();  //打开数据库连接
                        string sql = "INSERT INTO goods_tb (goods_id,goods_name,goods_title,goods_type,goods_creator_id,goods_patent_num,goods_img_name,goods_img_address,goods_intro,goods_other) VALUES ('" + goodsNumber + "','" + goodsName + "','" + goodsTitle + "','" + goodsType + "','" + goodsCreatorId + "','" + goodsPatent + "','" + goodsImageName + "','" + goodsImage + "','" + goodsDescribe + "','" + goodsOther + "')";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        comText.ExecuteNonQuery();  // 执行语句 

                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('展品添加成功！！');", true);
                    }
                }
                else　　//不成功提示上传失败
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('图片格式不对！！');", true);
                }
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

        protected void btn_add2_ServerClick(object sender, EventArgs e)
        {
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";

            SqlConnection conCon = new SqlConnection(conStr);
            string cId = Request["cId"].Trim();
            string cName = Request["cName"].Trim();

            string cDept = this.choose03.Value.Trim();
            string cPosition = this.choose04.Value.Trim();
            //string cDept = HiddenField3.Value.Trim();
            //string cPosition = HiddenField4.Value.Trim();
            string cType = cDept + " -- " + cPosition;

            string cAddress = Request["cAddress"].Trim();
            string cPhone = Request["cPhone"].Trim();
            string cEmail = Request["cEmail"].Trim();
            string cDescribe = Request["cDescribe"].Trim();
            string cOther = Request["cOther"].Trim();
            string cDatatimes = DateTime.Now.ToLocalTime().ToString();
            Boolean isOnly = true;
            string u_goodsImage = "images/png_mid.png";//默认图片地址
            string u_goodsImageName = "默认图片！";
            try
            {
                if (cId == "" || cName == "" || cType == "" || cPhone == "" || cEmail == "")
                {

                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('带*项为必填项，请输入相应信息！！');", true);
                    //Response.Write("<script>alert('带*项为必填项，请输入相应信息！')</script>");//执行提交操作，弹出消息框后，页面的样式变乱
                }
                else if (cDept == "3" || cPosition == "4")
                {
                    //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + cPosition + "'+'" + cDept + "')", true);
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('带*项为必填项，请选择部门和职位！！');", true);
                }
                else
                {
                    conCon.Open();  //打开数据库连接
                    string validateSql = "SELECT * FROM users_tb WHERE u_id = '" + cId + "'";
                    SqlCommand comTextV = new SqlCommand(validateSql, conCon);
                    SqlDataReader dr;
                    dr = comTextV.ExecuteReader();
                    if (dr.Read())    //判断SQL执行
                    {
                        isOnly = false;
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('ID已经存在！！（请勿重复添加！）');", true);
                    }
                    dr.Close();
                    string validateSql2 = "SELECT * FROM users_tb WHERE u_name = '" + cName + "'";
                    SqlCommand comTextV2 = new SqlCommand(validateSql2, conCon);
                    SqlDataReader dr2;
                    dr2 = comTextV2.ExecuteReader();
                    if (dr2.Read())    //判断SQL执行
                    {
                        isOnly = false;
                        ClientScript.RegisterStartupScript(GetType(), "", "window.alert('名字已经使用！！（请重新填写名字！）');", true);
                    }
                    dr2.Close();
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
            try
            {
                //ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + cId + "'+'" + cPhone + "')", true);
                if (isOnly == true)
                {
                    conCon.Open();  //打开数据库连接 
                    string u_sql = "INSERT INTO users_tb (u_id,u_name,u_type,u_address,u_phone,u_email,u_img_name,u_img_address,u_describe,u_datatimes,u_other) VALUES ('" + cId + "','" + cName + "','" + cType + "','" + cAddress + "','" + cPhone + "','" + cEmail + "','" + u_goodsImageName + "','" + u_goodsImage + "','" + cDescribe + "','" + cDatatimes + "','" + cOther + "')";
                    SqlCommand u_comText = new SqlCommand(u_sql, conCon);
                    u_comText.ExecuteNonQuery();  // 执行语句 
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('user put in secsses！');", true);
                    //Response.Redirect("./add_goods.aspx");//添加成功跳转页面，防止误刷新，重复添加
                }
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