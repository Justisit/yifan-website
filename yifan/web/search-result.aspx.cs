using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yifan.web
{
    public partial class search_result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string getSearch = Request.QueryString["content"];
            int count;
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            try
            {
                conCon.Open();
                string sqlStr = "SELECT COUNT(*) AS count FROM goods_tb,users_tb WHERE goods_name LIKE '%" + getSearch + "%' AND goods_tb.[goods_creator_id] = users_tb.[u_id]";
                SqlCommand comText = new SqlCommand(sqlStr, conCon);
                SqlDataReader dr;
                dr = comText.ExecuteReader(); //结果集唯一
                dr.Read();
                count = Int32.Parse(dr["count"].ToString());
                dr.Close();
                conCon.Close();
                if (count > 0)
                {
                    Data_Bind(getSearch);
                    ClientScript.RegisterStartupScript(GetType(), "", "$('#show-result').text('o(^▽^)o  搜索到" + count + "个相似结果');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "$('#show-result').text('sorry ! there's no result for this !');", true);
                }

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "window.alert('" + ex + "'.Message.ToString()');", true);
            }
            finally
            {
            }
            //if (!IsPostBack)
            //{
            //    conCon.Open();
            //    string sqlStr = "SELECT TOP 10 * FROM goods_tb,users_tb WHERE goods_tb.[goods_creator_id] = users_tb.[u_id] ORDER BY upvote DESC, goods_id ASC";
            //    SqlDataAdapter da = new SqlDataAdapter(sqlStr, conCon);
            //    SqlCommandBuilder bd = new SqlCommandBuilder(da);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds, "goods_tb");
            //    PagedDataSource dSource = new PagedDataSource();
            //    dSource.DataSource = ds.Tables["goods_tb"].DefaultView;
            //    DataList1.DataSource = dSource;
            //    DataList1.DataBind();
            //    conCon.Close();
            //    ClientScript.RegisterStartupScript(GetType(), "", "$('#show-result').text('o(^▽^)o  搜索到10个相似结果');", true);
            //}

        }

        public void Data_Bind(string search)
        {
            string getSearch = search;
            string conStr = "Server=ZHANGYZ-PC;database=yifan_db;Integrated Security=SSPI";
            SqlConnection conCon = new SqlConnection(conStr);
            try
            {
                conCon.Open();
                string sqlStr = "SELECT * FROM goods_tb,users_tb WHERE goods_name LIKE '%" + getSearch + "%' AND goods_tb.[goods_creator_id] = users_tb.[u_id]";
                SqlDataAdapter da = new SqlDataAdapter(sqlStr, conCon);
                SqlCommandBuilder bd = new SqlCommandBuilder(da);
                DataSet ds = new DataSet();
                string num = ds.Tables.Count.ToString();
                da.Fill(ds, "goods_tb");
                PagedDataSource dSource = new PagedDataSource();
                dSource.DataSource = ds.Tables["goods_tb"].DefaultView;
                DataList1.DataSource = dSource;
                DataList1.DataBind();
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