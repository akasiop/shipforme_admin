<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit_news.aspx.cs" Inherits="edit_news" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
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
   <form runat="server" class="layui-form"  style="width: 90%;padding-top: 20px;">
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
				      <textarea id="content" placeholder="请输入内容(不超过500字)" style="height:400px" class="layui-textarea" runat="server"></textarea>
				    </div>
				  </div>
				  <div class="layui-form-item">
				    <div class="layui-input-block">
                        <asp:Button ID="btn_Upload" runat="server" CssClass="layui-btn layui-btn-normal" Text="立即修改" OnClick="Button1_Click"/>
                        <asp:Button ID="Button1" runat="server" CssClass="layui-btn layui-btn-normal" Text="返回新闻列表" OnClick="Button2_Click"/>
				    </div>
				  </div>
				</form>
</body>
</html>
