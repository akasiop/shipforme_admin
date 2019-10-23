using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_index_club : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string club_1 = this.club_1.Text.ToString();
        string club_2 = this.club_2.Text.ToString();
        string club_3 = this.club_3.Text.ToString();
        string club_4 = this.club_4.Text.ToString();
        string club_5 = this.club_5.Text.ToString();
        string club_6 = this.club_6.Text.ToString();

        string news_adddate = DateTime.Now.ToString();

        if (club_1 == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写社团名称！')</script>");
        }
        else if (club_2 == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写社团类型！')</script>");
        }
        else if (club_3 == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写社长！')</script>");
        }
        else if (club_4 == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写副社长！')</script>");
        }
        else if (club_5 == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写负责人电话！')</script>");
        }
        else if (club_6 == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写社团人数！')</script>");
        }
        else
        {

            string sql = "insert into club_info (name,kind,leader,leader2,number,member_num) values('" + club_1 + "','" + club_2 + "','" + club_3 + "','" + club_4 + "','" + club_5 + "','" + club_6 + "')";
            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();

            //写入基本信息
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            //关闭连接
            conn.Close();
            Response.Write("<script Language=Javascript>alert('创建成功！');location.href = 'club.aspx';</script>");
            //Response.Write("<script>alert('提交成功!')</script>");

        }
    }
}