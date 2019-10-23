using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_index_menu1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;

        string sql = "insert into user_info (username,password) values('" + username + "','" + password + "')";
        string sql2 = "select * from [user_info] where username='" + username + "'";
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlCommand read = new SqlCommand(sql2, conn);

      if (username == "")
        {
            this.lblMessage.Text = "学号不可以为空！";
        }

        else if (TextBox2.Text == "")
        {
            this.lblMessage.Text = "密码不可以为空！";
        }
        else
        {
            DataSet ds = new DataSet();
            SqlDataReader sdr=read.ExecuteReader();

            if (sdr.Read())
            {

                if (username == sdr["username"].ToString())
                {
                    this.lblMessage.Text = "该学号已存在！";
                    sdr.Close();
                }
            }
            else
            {
                //this.lblMessage.Text = "注册成功！";
                cmd.ExecuteNonQuery();
                System.Threading.Thread.Sleep(500);
                //Response.Redirect("./login.aspx");
                Response.Redirect(Request.Url.ToString());
                
            }
            }
        }
}


