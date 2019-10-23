using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class second_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Upload_Click1(object sender, EventArgs e)
    {


        if (fileUpload.PostedFile.FileName == "")
        {
            this.lblMessage.Text = " 请选择上传的文件！";
        }
        else
        {
           
                
                string filepath = fileUpload.PostedFile.FileName; //文件路径
                string filename = Path.GetFileName(filepath); //文件名
                string fileExtension = Path.GetExtension(filepath); //文件的扩展名
                int filesize = fileUpload.PostedFile.ContentLength;//获取文件的大小


                //生成主键(用时间和文件名组合生成主键)
                string filekey = Path.GetFileNameWithoutExtension(filename);
                filekey = DateTime.Now.ToString("yyyymmddhhmmss") + filekey;

                //将文件本身转换成字节准备上传
                Stream filestream = fileUpload.PostedFile.InputStream;
                byte[] filebuffer = new byte[filesize]; //准备一个和文件大小一样的缓存(字节数组)
                filestream.Read(filebuffer, 0, filesize); //将文件流转换成字节数组，为了存入数据库

                //连接数据库

                String strConn = "Data Source=.;Initial Catalog=sfm;Integrated Security=true";
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();


                SqlCommand command = new SqlCommand("Uploadfile_0", conn);

                command.CommandType = CommandType.StoredProcedure; //命令类型为存储过程

                command.Parameters.Add("@filekey", SqlDbType.NVarChar, 50).Value = filekey;//写入主键:

                command.Parameters.Add("@fileName", SqlDbType.NVarChar, 50).Value = filename; //写入文件名

                command.Parameters.Add("@fileSize", SqlDbType.Int).Value = filesize;//写入文件大小

                command.Parameters.Add("@fileType", SqlDbType.VarChar, 10).Value = fileExtension; //写入文件类型

                command.Parameters.Add("@fileTime", SqlDbType.DateTime).Value = DateTime.Now; //写入当前时间

                command.Parameters.Add("@fileContent", SqlDbType.VarBinary).Value = filebuffer; //!以而进行形式存入文件本身

                command.ExecuteNonQuery();

                //关闭连接
                conn.Close();

                Response.Write("<script>alert('上传成功!')</script>");
                GridView1.DataBind(); 
            
        }
    }
}