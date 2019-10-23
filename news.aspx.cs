using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_index_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string news_title = this.title.Text.ToString();
        string news_author = this.author.Text.ToString();
        string news_ly = this.ly.Text.ToString();

        string news_adddate = DateTime.Now.ToString();

        if (news_title == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写标题！')</script>");
        }
        else if (news_author == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写作者！')</script>");
        }
        else if (news_ly == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写来源！')</script>");
        }
        else
        {

            string sql = "insert into news (news_title,news_author,news_ly,news_content,news_adddate) values('" + news_title + "','" + news_author + "','" + news_ly + "','" + content.Value + "','" + news_adddate + "')";
            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();

            //写入基本信息
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            //关闭连接
            conn.Close();
            Response.Write("<script Language=Javascript>alert('发布成功！');location.href = 'news.aspx';</script>");
            //Response.Write("<script>alert('提交成功!')</script>");

        }
    }
    protected void OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "check_resume")
        {

            //判断用户点击的是哪行

            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //得到被点击行的数据

            GridViewRow row = GridView1.Rows[rowIndex];


            //得到被点击行的列的值(这里是文件名)
            string name = row.Cells[0].Text;

            Session["name"] = name;
            //Response.Redirect("./check_resume.aspx");
            Response.Write("<script>window.open('news_list.aspx')</script>");
            //Response.Write("<script language='javascript'>window.open('./check_resume.aspx');</script>");
        }
    }
}