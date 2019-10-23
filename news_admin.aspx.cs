using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_index_news_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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