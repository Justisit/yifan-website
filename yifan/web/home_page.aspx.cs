using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace yifan.web
{
    public partial class home_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void pic_change01_ServerClick(object sender, EventArgs e)
        {
            string[] name = new string[6];
            string[] fileName = new string[6];
            string[] type = new string[6];
            string[] ipath = new string[6];
            string[] wpath = new string[6];
            string[] title = new string[6];


            name[0] = FileUpload1.FileName;
            fileName[0] = name[0].Substring(name[0].LastIndexOf("\\") + 1);
            type[0] = name[0].Substring(name[0].LastIndexOf(".") + 1);
            //ipath[0] = Server.MapPath("../images") + "\\" + name;
            wpath[0] = "/upload/images_slidePic/" + name[0];
            title[0] = this.TextBox1.Text.Trim();

            name[1] = FileUpload2.FileName;       //获取文件名          
            fileName[1] = name[1].Substring(name[1].LastIndexOf("\\") + 1);//获取图片的文件名（不含扩展名）
            type[1] = name[1].Substring(name[1].LastIndexOf(".") + 1);    //获取文件类型
            ipath[1] = Server.MapPath("../images") + "\\" + name;    //获取文件路径
            wpath[1] = "/upload/images_slidePic/" + name[1];        //[color=red]设置文件保存相对路径(这里的路径其实就是我们存放图片的文件夹名)[/color]
            title[1] = this.TextBox2.Text.Trim();

            name[2] = FileUpload3.FileName;
            fileName[2] = name[2].Substring(name[2].LastIndexOf("\\") + 1);
            type[2] = name[2].Substring(name[2].LastIndexOf(".") + 1);
            ipath[2] = Server.MapPath("../images") + "\\" + name;
            wpath[2] = "/upload/images_slidePic/" + name[2];
            title[2] = this.TextBox3.Text.Trim();

            name[3] = FileUpload4.FileName;
            fileName[3] = name[3].Substring(name[3].LastIndexOf("\\") + 1);
            type[3] = name[3].Substring(name[3].LastIndexOf(".") + 1);
            ipath[3] = Server.MapPath("../images") + "\\" + name;
            wpath[3] = "/upload/images_slidePic/" + name[3];
            title[3] = this.TextBox4.Text.Trim();

            name[4] = FileUpload5.FileName;
            fileName[4] = name[4].Substring(name[4].LastIndexOf("\\") + 1);
            type[4] = name[4].Substring(name[4].LastIndexOf(".") + 1);
            ipath[4] = Server.MapPath("../images") + "\\" + name;
            wpath[4] = "/upload/images_slidePic/" + name[4];
            title[4] = this.TextBox5.Text.Trim();

            name[5] = FileUpload6.FileName;
            fileName[5] = name[5].Substring(name[5].LastIndexOf("\\") + 1);
            type[5] = name[5].Substring(name[5].LastIndexOf(".") + 1);
            ipath[5] = Server.MapPath("../images") + "\\" + name;
            wpath[5] = "/upload/images_slidePic/" + name[5];
            title[5] = this.TextBox6.Text.Trim();

            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            try
            {
                int bl = 0;
                for (int i = 0; i < 6; i++)
                {
                    if (type[i] == "jpg" || type[i] == "gif" || type[i] == "bmp" || type[i] == "png" || type[i] == "jpeg") { bl += 1; }
                }
                if (bl < 6)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('其中一个图片的格式不对，请仔细检查！！');", true);
                }
                else
                {


                    conCon.Open();  //打开数据库连接
                    for (int i = 0; i < 6; i++)
                    {

                        string sql = "UPDATE pic_slide SET pic_name='" + fileName[i] + "',pic_address='" + wpath[i] + "',pic_title='" + title[i] + "' WHERE pic_id='" + i + "'";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        comText.ExecuteNonQuery();  // 执行语句 
                        this.FileUpload1.SaveAs(Server.MapPath("~/upload/images_slidePic/" + name[i] + ""));//将图片上传到指定路径的文件夹     
                        //uppath = "~/upload/" + dataName + "." + type;  //将路径保存到变量，将该变量的值保存到数据库相应字段即可
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString);", true);
            }
            finally
            {
                conCon.Close();   //关闭数据库链接
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('图片更改成功！');", true);
            }
        }


        protected void pic_change02_ServerClick(object sender, EventArgs e) 
        {
            string[] name = new string[6];
            string[] fileName = new string[6];
            string[] type = new string[6];
            string[] ipath = new string[6];
            string[] wpath = new string[6];
            string[] title = new string[6];


            name[0] = FileUpload7.FileName;
            fileName[0] = name[0].Substring(name[0].LastIndexOf("\\") + 1);
            type[0] = name[0].Substring(name[0].LastIndexOf(".") + 1);
            ipath[0] = Server.MapPath("../images") + "\\" + name;
            wpath[0] = "/upload/images_slidePic/" + name[0];
            title[0] = this.TextBox7.Text.Trim();

            name[1] = FileUpload8.FileName;       //获取文件名          
            fileName[1] = name[1].Substring(name[1].LastIndexOf("\\") + 1);//获取图片的文件名（不含扩展名）
            type[1] = name[1].Substring(name[1].LastIndexOf(".") + 1);    //获取文件类型
            ipath[1] = Server.MapPath("../images") + "\\" + name;    //获取文件路径
            wpath[1] = "/upload/images_slidePic/" + name[1];        //[color=red]设置文件保存相对路径(这里的路径其实就是我们存放图片的文件夹名)[/color]
            title[1] = this.TextBox8.Text.Trim();

            name[2] = FileUpload9.FileName;
            fileName[2] = name[2].Substring(name[2].LastIndexOf("\\") + 1);
            type[2] = name[2].Substring(name[2].LastIndexOf(".") + 1);
            ipath[2] = Server.MapPath("../images") + "\\" + name;
            wpath[2] = "/upload/images_slidePic/" + name[2];
            title[2] = this.TextBox9.Text.Trim();

            name[3] = FileUpload10.FileName;
            fileName[3] = name[3].Substring(name[3].LastIndexOf("\\") + 1);
            type[3] = name[3].Substring(name[3].LastIndexOf(".") + 1);
            ipath[3] = Server.MapPath("../images") + "\\" + name;
            wpath[3] = "/upload/images_slidePic/" + name[3];
            title[3] = this.TextBox10.Text.Trim();

            name[4] = FileUpload11.FileName;
            fileName[4] = name[4].Substring(name[4].LastIndexOf("\\") + 1);
            type[4] = name[4].Substring(name[4].LastIndexOf(".") + 1);
            ipath[4] = Server.MapPath("../images") + "\\" + name;
            wpath[4] = "/upload/images_slidePic/" + name[4];
            title[4] = this.TextBox11.Text.Trim();

            name[5] = FileUpload12.FileName;
            fileName[5] = name[5].Substring(name[5].LastIndexOf("\\") + 1);
            type[5] = name[5].Substring(name[5].LastIndexOf(".") + 1);
            ipath[5] = Server.MapPath("../images") + "\\" + name;
            wpath[5] = "/upload/images_slidePic/" + name[5];
            title[5] = this.TextBox12.Text.Trim();

            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            try
            {
                int bl = 0;
                for (int i = 0; i < 6; i++)
                {
                    if (type[i] == "jpg" || type[i] == "gif" || type[i] == "bmp" || type[i] == "png" || type[i] == "jpeg") { bl += 1; }
                }
                if (bl < 6)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "window.alert('其中一个图片的格式不对，请仔细检查！！');", true);
                }
                else
                {


                    conCon.Open();  //打开数据库连接
                    for (int i = 0; i < 6; i++)
                    {
                        int j = i + 6;
                        string sql = "UPDATE pic_slide SET pic_name='" + fileName[i] + "',pic_address='" + wpath[i] + "',pic_title='" + title[i] + "' WHERE pic_id='" + j + "'";
                        SqlCommand comText = new SqlCommand(sql, conCon);
                        comText.ExecuteNonQuery();  // 执行语句 
                        this.FileUpload1.SaveAs(Server.MapPath("/upload/images_slidePic/" + name[i] + ""));//将图片上传到指定路径的文件夹     
                        //uppath = "~/upload/" + dataName + "." + type;  //将路径保存到变量，将该变量的值保存到数据库相应字段即可
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString);", true);
            }
            finally
            {
                conCon.Close();   //关闭数据库链接
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('图片更改成功！');", true);
            }

        }
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string name = FileUpload1.FileName;       //获取文件名          
        //    string fileName = name.Substring(name.LastIndexOf("\\") + 1);//获取图片的文件名（不含扩展名）
        //    string type = name.Substring(name.LastIndexOf(".") + 1);    //获取文件类型
        //    string ipath = Server.MapPath("../images") + "\\" + name;    //获取文件路径
        //    string wpath = "/images\\" + name;        //[color=red]设置文件保存相对路径(这里的路径其实就是我们存放图片的文件夹名)[/color]
        //    string title = this.TextBox1.Text.Trim();        
        //  //string dataName = DateTime.Now.ToString("yyyyMMddhhmmss"); //获取图片上传的时间，以时间作为图片的名字可以防止图片重名
　　       
　　        

        //    string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
           
        //    SqlConnection conCon = new SqlConnection(conStr);

        //    try
        //    {
        //        if (type == "jpg" || type == "gif" || type == "bmp" || type == "png" ||type =="jpeg")    //判断SQL执行登录是否成功，成功执行下面语句
        //        {
        //            conCon.Open();  //打开数据库连接
        //            string sql = "UPDATE pic_slide SET pic_name='"+name+"',pic_address='"+wpath+"',pic_title='"+title+"' WHERE pic_id=1";
        //            SqlCommand comText = new SqlCommand(sql, conCon);
        //            comText.ExecuteNonQuery();  // 执行语句 
        //            //this.FileUpload1.SaveAs(Server.MapPath("~/upload") + "\\" + dataName + "." + type);//将图片上传到指定路径的文件夹     
        //          //uppath = "~/upload/" + dataName + "." + type;  //将路径保存到变量，将该变量的值保存到数据库相应字段即可
        //            Response.Write("<script>alert('图片1更改成功！')</script>");
        //            bindListBox();
        //        }
        //        else　　//不成功提示上传失败
        //        {
        //            Response.Write("<script>alert('图片格式不对！')</script>");
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert(ex.Message.ToString())</script>");
        //    }
        //    finally
        //    {
        //        conCon.Close();   //关闭数据库链接
        //    }
        //}

        //private void bindListBox()//将xxxx字段的数据显示在listBox1中,以便查看存入库中的每一个图片 
        //{
        //    string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
        //    SqlConnection conCon = new SqlConnection(conStr);
        //    string sql = "SELECT * FROM pic_slide";
        //    SqlCommand comText = new SqlCommand(sql,conCon); 
        //    SqlDataAdapter da = new SqlDataAdapter(); 
        //    da.SelectCommand = comText; 
        //    DataSet ds = new DataSet(); 
        //    da.Fill(ds);
        //    ListBox1.DataSource = ds.Tables[0].DefaultView; //设置listBox1的数据源         
        
        //}

        //  private void Form1_Load(object sender, EventArgs e) //Form1的Load事件
        //{
        //    bindListBox();//程序加载时,先将数据库中现有的数据显示在listBox1中 
        //}
        //protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
        //    SqlConnection conCon = new SqlConnection(conStr);
        //    conCon.Open();  //打开数据库连接
        //    string sql = "SELECT * from pic_slied";
        //    SqlCommand comText = new SqlCommand(sql, conCon);
        //    SqlDataReader dr = comText.ExecuteReader();
        //    this.ListBox1.DataSource = dr;       

        //    this.ListBox1.DataTextField = "pic_name";

        //    this.ListBox1.DataValueField = "pic_address";

        //    this.ListBox1.DataBind();

        //    dr.Close();

        //    conCon.Close();
        //}

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}
    }
    /*
     二、将图片以二进制数据流直接保存到数据库：
　　引用如下命名空间：
　　using System.Drawing;
　　using System.IO;
　　using System.Data.SqlClient;
　　设计数据库时，表中相应的字段类型为iamge
　　保存：
　　//图片路径
　　string strPath = this.FileUpload1.PostedFile.FileName.ToString ();
　　//读取图片
　　FileStream fs = new System.IO.FileStream(strPath, FileMode.Open, FileAccess.Read);
　　BinaryReader br = new BinaryReader(fs);
　　byte[] photo = br.ReadBytes((int)fs.Length);
　　br.Close();
　　fs.Close();
　　//存入
　　SqlConnection myConn = new SqlConnection("Data Source=.;Initial Catalog=stumanage;User ID=sa;Password=123");
　　string strComm = " INSERT INTO stuInfo(stuid,stuimage) VALUES(107,@photoBinary )";//操作数据库语句根据需要修改
　　SqlCommand myComm = new SqlCommand(strComm, myConn);
　　myComm.Parameters.Add("@photoBinary", SqlDbType.Binary, photo.Length);
　　myComm.Parameters["@photoBinary"].Value = photo;
　　myConn.Open();
　　if (myComm.ExecuteNonQuery() > 0)
　　{
　　this.Label1.Text = "ok";
　　}
　　myConn.Close();
　　读取：
　　...连接数据库字符串省略
　　mycon.Open();
　　SqlCommand command = new
　　SqlCommand("select stuimage from stuInfo where stuid=107", mycon);//查询语句根据需要修改
　　byte[] image = (byte[])command.ExecuteScalar ();
　　//指定从数据库读取出来的图片的保存路径及名字
　　string strPath = "~/Upload/zhangsan.JPG";
　　string strPhotoPath = Server.MapPath(strPath);
　　//按上面的路径与名字保存图片文件
　　BinaryWriter bw = new BinaryWriter(File.Open(strPhotoPath,FileMode.OpenOrCreate));
　　bw.Write(image);
　　bw.Close();
　　//显示图片
　　this.Image1.ImageUrl = strPath;
     
     */
}