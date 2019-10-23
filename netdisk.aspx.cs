using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class admin_index_netdisk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)//数据行
        {
            string Str = e.Row.Cells[0].Text; //第二列内容
            e.Row.Cells[0].ToolTip = Str;//鼠标放上去显示全部信息
            if (Str.Length > 12) //第二列内容大于20个
            {
                e.Row.Cells[0].Text = Str.Substring(0, 12) + "..."; //截取20个显示，其他用“...”号代替

            }

        }
    }

    protected void OnRowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Download")
        {
            //设置连接字符串
            String strConn = "Data Source=.;Initial Catalog=sfm;Integrated Security=true";

            //连接数据库并打开

            SqlConnection myConnection = new SqlConnection(strConn);
            myConnection.Open();

            //编写SQL语句
            //判断用户点击的是哪行

            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //得到被点击行的数据

            GridViewRow row = GridView1.Rows[rowIndex];

            //得到被点击行的第4列的值(这里是上传时间)
            //DateTime filetime = Convert.ToDateTime(row.Cells[1].Text);

            //得到被点击行的列的值(这里是文件名)
            string filekey = row.Cells[0].ToolTip;

            //解算出主键(设计之初，将主键设置为上传时间和文件名的组合)
            //string filekey = filetime.ToString("yyyymmddhhmmss") + Path.GetFileNameWithoutExtension(filename);

            string strSQL = "select FileName, FileType, FileContent from [sfm].[dbo].[net_disk]where FileKey= '" + filekey + "'";
            //创建适配器

            SqlDataAdapter da2 = new SqlDataAdapter(strSQL, myConnection);

            //创建数据集并填充

            DataSet ds2 = new DataSet();
            da2.Fill(ds2);

            //读取查询结果

            byte[] b2 = (byte[])ds2.Tables[0].Rows[0]["FileContent"];
            string type = (string)ds2.Tables[0].Rows[0]["FileType"];
            string fileName = (string)ds2.Tables[0].Rows[0]["FileName"];

            //清除缓冲区流中的所有内容输出
            Response.Clear();

            //设置文件名

            Response.AddHeader("Content-Disposition", "attachment; filename= " + HttpUtility.UrlEncode(fileName, System.Text.Encoding.UTF8));

            //文件的长度

            Response.AddHeader("Content-Length ", b2.Length.ToString());

            //将二进制文件另存到本地
            Response.BinaryWrite(b2);

            //关闭HTTP协议流(停止执行后续代码)
            Response.End();

            //关闭数据库连接

            myConnection.Close();
            //刷新GridView
            //GridView1.DataBind(); 

        }
        

    }


}