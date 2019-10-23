using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_index_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] != null)
        {
            string username = Session["username"].ToString();
            this.lblMessage.Text = username;
        }
        else
        {
            Response.Write("<script Language=Javascript>alert('请先登录！');location.href = '../../second/login_3.aspx';</script>");
        }
    }
}