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
    public partial class search_allgoods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data_bind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;

            data_bind();

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

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim() + "',goods_patent_num='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text.ToString().Trim() + "',goods_img_name='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[7].Controls[0])).Text.ToString().Trim() + "',goods_img_address='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[8].Controls[0])).Text.ToString().Trim() + "',goods_img_intro='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[9].Controls[0])).Text.ToString().Trim() + "',goods_img_times='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[10].Controls[0])).Text.ToString().Trim() + "',goods_img_other='"

                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[11].Controls[0])).Text.ToString().Trim() + "' WHERE goods_id='"

                + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";

            SqlCommand comText = new SqlCommand(sqlStr, conCon);
            comText.ExecuteNonQuery();
            conCon.Close();

            GridView1.EditIndex = -1;

            data_bind();

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
            data_bind();

        }
        //取消

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;

            data_bind();

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

                    ((LinkButton)e.Row.Cells[13].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"吗?')");

                }
            }
        }

        //分页
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            data_bind();
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