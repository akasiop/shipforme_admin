using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_index_menu2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;

        string sql = "insert into user_service (username,password) values('" + username + "','" + password + "')";
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();

        if (username == "")
        {
            this.lblMessage.Text = "编号不可以为空！";
        }

        else if (password == "")
        {
            this.lblMessage.Text = "密码不可以为空！";
        }
        else
        {

            //写入基本信息
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            //关闭连接
            conn.Close();
            Response.Redirect(Request.Url.ToString());
            //Response.Write("<script>alert('添加成功！')</script>");
        }
    }
}