﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main-layout" id='main-layout'>
			<!--侧边栏-->
			<div class="main-layout-side">
				<div class="m-logo">
				</div>
				<ul class="layui-nav layui-nav-tree" lay-filter="leftNav">
				  <li class="layui-nav-item layui-nav-itemed">
				    <a href="javascript:;"><i class="iconfont">&#xe607;</i>用户管理</a>
				    <dl class="layui-nav-child">
				      <dd><a href="javascript:;" data-url="menu1.aspx" data-id='1' data-text="学生管理"><span class="l-line"></span>学生管理</a></dd>
				      <dd><a href="javascript:;" data-url="menu2.aspx" data-id='2' data-text="服务端管理"><span class="l-line"></span>服务端管理</a></dd>
				    </dl>
				  </li>
				  <li class="layui-nav-item">
				    <a href="javascript:;"><i class="iconfont">&#xe608;</i>内容管理</a>
				    <dl class="layui-nav-child">
				      <dd><a href="javascript:;" data-url="Template_admin.aspx" data-id='3' data-text="模板管理"><span class="l-line"></span>模板管理</a></dd>
				      <dd><a href="javascript:;" data-url="news.aspx" data-id='9' data-text="新闻管理"><span class="l-line"></span>新闻管理</a></dd>
				    </dl>
				  </li>
				  <li class="layui-nav-item">
				    <a href="javascript:;" data-url="netdisk.aspx" data-id='4' data-text="网盘管理"><i class="iconfont">&#xe604;</i>网盘管理</a>
				  </li>
				   <li class="layui-nav-item">
				    <a href="javascript:;" data-url="../../second/reservation.aspx" data-id='5' data-text="简历管理"><i class="iconfont">&#xe60c;</i>简历管理</a>
				  </li>
				   <li class="layui-nav-item">
				    <a href="../../second/library_state.aspx" target="_blank"><i class="iconfont">&#xe60a;</i>RBAC</a>
				  </li>
				  <li class="layui-nav-item">
				    <a href="javascript:;" data-url="club.aspx" data-id='6' data-text="社团系统" ><i class="iconfont">&#xe603;</i>社团系统</a>
				  </li>
				  <li class="layui-nav-item">
				    <a href="javascript:;"><i class="iconfont">&#xe60d;</i>主页静态</a>
				  </li>
				  <li class="layui-nav-item">
				    <a href="javascript:;"><i class="iconfont">&#xe600;</i>备份管理</a>
				  </li>
				  <li class="layui-nav-item">
				    <a href="javascript:;" data-url="admin_info.aspx" data-id='7' data-text="个人信息"><i class="iconfont">&#xe606;</i>个人信息</a>
				  </li>
				  <li class="layui-nav-item">
				  	<a href="javascript:;" data-url="system.html" data-id='8' data-text="系统设置"><i class="iconfont">&#xe60b;</i>系统设置</a>
				  </li>
				</ul>
			</div>
			<!--右侧内容-->
			<div class="main-layout-container">
				<!--头部-->
				<div class="main-layout-header">
					<div class="menu-btn" id="hideBtn">
						<a href="javascript:;">
							<span class="iconfont">&#xe60e;</span>
						</a>
					</div>
					<ul class="layui-nav" lay-filter="rightNav">
					 <li class="layui-nav-item">&nbsp;<asp:Label ID="lblMessage" runat="server" ForeColor="#EC005F"></asp:Label>&nbsp;</li>
					  <li class="layui-nav-item">
					    <a href="javascript:;" data-url="admin_info.aspx" data-id='5' data-text="个人信息">网站管理员</a>
					  </li>
					  <li class="layui-nav-item"><a href="../../index.aspx">退出</a></li>
					</ul>
				</div>
				<!--主体内容-->
				<div class="main-layout-body">
					<!--tab 切换-->
					<div class="layui-tab layui-tab-brief main-layout-tab" lay-filter="tab" lay-allowClose="true">
					  <ul class="layui-tab-title">
					    <li class="layui-this welcome">后台主页</li>
					  </ul>
					  <div class="layui-tab-content">
					    <div class="layui-tab-item layui-show" style="background: #f5f5f5;">
					    	<!--1-->
					    	<iframe src="welcome.html" width="100%" height="100%" name="iframe" scrolling="auto" class="iframe" framborder="0"></iframe>
					    	<!--1end-->
					    </div>
					  </div>
					</div>
				</div>
			</div>
			<!--遮罩-->
			<div class="main-mask">
				
			</div>
		</div>
		<script type="text/javascript">
		    var scope = {
		        link: './welcome.html'
		    }
		</script>
		<script src="../../static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="../../static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="../../static/admin/js/main.js" type="text/javascript" charset="utf-8"></script>
    </form>
</body>
</html>
