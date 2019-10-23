using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class edit_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string news_id = Request.QueryString["news_id"];
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        string sql = "select * from [news] where news_id='" + news_id + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            if (news_id == sdr["news_id"].ToString())
            {
                title.Text = sdr["news_title"].ToString();
                author.Text = sdr["news_author"].ToString();
                ly.Text = sdr["news_ly"].ToString();
                content.Value = sdr["news_content"].ToString();
               
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string news_id = Request.QueryString["news_id"];
        string news_title = title.Text;
        string news_author =author.Text;
        string news_ly = ly.Text;
        string news_adddate = DateTime.Now.ToString();


        string update = "Update [sfm].[dbo].[news] set [news_title]='" + news_title + "',[news_author]='" + news_author + "',[news_ly]='" + news_ly + "',[news_content]='" + content.Value + "' where news_id= '" + news_id + "'";
        //string sql = "UPDATE news SET news_title= CASE  news_title WHEN  ''" + news_title + "'' THEN  'myc'END,news_author=CASE  news_id WHEN  '1' THEN  'hcm'end,news_ly=CASE  news_id WHEN  '1' THEN  'hcm'end,news_content=CASE  news_id WHEN  '1' THEN  'hcm'end,news_adddate=CASE  news_id WHEN  '1' THEN  'hcm'end where news_id='1'";
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();

        //写入基本信息
        SqlCommand cmd = new SqlCommand(update, conn);
        cmd.ExecuteNonQuery();
        //关闭连接
        conn.Close();
        Response.Write("<script Language=Javascript>alert('修改成功！');location.href = 'news.aspx';</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("news.aspx");
    }
}
