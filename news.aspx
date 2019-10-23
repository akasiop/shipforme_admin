<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="admin_index_news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>网站后台管理</title>
		<link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css"/>
        <link href="../../css/style_2.css" rel='stylesheet' type='text/css' />

     <link rel="stylesheet" href="../../kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="../../kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../../kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../../kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="../../kindeditor/plugins/code/prettify.js"></script>
	<script>
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#content', {
	            cssPath: '/kindeditor/plugins/code/prettify.css',
	            uploadJson: '/kindeditor/asp.net/upload_json.ashx',
	            fileManagerJson: '/kindeditor/asp.net/file_manager_json.ashx',
	            allowFileManager: true,
	            afterCreate: function () {
	                var self = this;
	                K.ctrl(document, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	                K.ctrl(self.edit.doc, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	            }
	        });
	        prettyPrint();
	    });

	    // ASP.NET 上传文件
	    KindEditor.ready(function (K) {
	        K.create('#textarea_id', {
	            uploadJson: '/kindeditor/asp.net/upload_json.ashx',
	            fileManagerJson: '/kindeditor/asp.net/file_manager_json.ashx',
	            allowFileManager: true
	        });
	    });


	</script>
</head>
<body>
    <form id="form1" runat="server">
   <div class="layui-tab page-content-wrap">
		  <ul class="layui-tab-title">
		    <li class="layui-this">新闻发布</li>
		    <li>新闻管理</li>
		  </ul>
		  <div class="layui-tab-content">
		    <div class="layui-tab-item layui-show">
		    	<form class="layui-form"  style="width: 90%;padding-top: 20px;">
				  <div class="layui-form-item">
				    <label class="layui-form-label">标题：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="title" class="layui-input" runat="server" placeholder="不超过50个字"></asp:TextBox>
				     
				    </div>
				  </div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">作者：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="author" class="layui-input" runat="server" placeholder="最少3个字"></asp:TextBox>
				      
				    </div>
				  </div>
				   <div class="layui-form-item">
				    <label class="layui-form-label">来源：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="ly" class="layui-input" runat="server" placeholder="请输入来源（部门）"></asp:TextBox>
				     
				    </div>
				  </div>
				  <div class="layui-form-item layui-form-text">
				    <label class="layui-form-label">内容：</label>
				    <div class="layui-input-block">
				      <textarea id="content" placeholder="请输入内容(不超过500字)" style="height:300px" class="layui-textarea" runat="server"></textarea>
				    </div>
				  </div>
				  <div class="layui-form-item">
				    <div class="layui-input-block">
                        <asp:Button ID="btn_Upload" runat="server" CssClass="layui-btn layui-btn-normal" Text="立即发布" OnClick="Button1_Click"/>

				    </div>
				  </div>
				</form>
		    </div>
		    <div class="layui-tab-item">
		    	<form style="width: 100%;padding-top: 20px;">
				 <div >
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="OnRowCommand" DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="news_id">
                <Columns>
                    <asp:BoundField DataField="news_id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="news_id" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="news_title" HeaderText="标题" SortExpression="news_title" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="news_author" HeaderText="作者" SortExpression="news_author" >
                    <HeaderStyle HorizontalAlign="Center"/>
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="news_adddate" HeaderText="发布时间" SortExpression="news_adddate" >
                     <HeaderStyle HorizontalAlign="Center"/>
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ButtonField CommandName="check_resume" Text="查看" >
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:ButtonField>
                    <asp:CommandField DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定删除吗？')&quot;&gt;删除&lt;/div&gt;" ShowDeleteButton="True">
                    <ItemStyle HorizontalAlign="Center" ForeColor="#EC005F" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [news] WHERE [news_id] = @news_id" InsertCommand="INSERT INTO [news] ([news_title], [news_author], [news_adddate]) VALUES (@news_title, @news_author, @news_adddate)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [news_id], [news_title], [news_author], [news_adddate] FROM [news]" UpdateCommand="UPDATE [news] SET [news_title] = @news_title, [news_author] = @news_author, [news_adddate] = @news_adddate WHERE [news_id] = @news_id">
                <DeleteParameters>
                    <asp:Parameter Name="news_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="news_title" Type="String" />
                    <asp:Parameter Name="news_author" Type="String" />
                    <asp:Parameter Name="news_adddate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="news_title" Type="String" />
                    <asp:Parameter Name="news_author" Type="String" />
                    <asp:Parameter Name="news_adddate" Type="String" />
                    <asp:Parameter Name="news_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
				</form>
		    </div>
		  </div>
		</div>
	<script src="../../static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
	<script>
	    //Demo
	    layui.use(['form', 'element'], function () {
	        var form = layui.form();
	        var element = layui.element();
	        form.render();
	    });
	</script>
    </form>
</body>
</html>

