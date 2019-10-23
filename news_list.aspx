<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news_list.aspx.cs" Inherits="news_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
		<link href="../../css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../../js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="../../css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<!---//webfonts--->
	</head>
	<body>
	<!---- container ---->
		<!---- header ----->
		<div class="header about-head">
			<div class="container">
				<!--- logo ----->
				<div class="logo"><img src="../images/logoname.png" width="206" height="32" alt=""/></div>
				<!--- logo ----->
				<!--- top-nav ----->
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
                        <li><a href="../second/register.aspx">注册</a></li>
					  <li><a href="../second/about.aspx">关于我们</a></li>
					  <li><a href="../second/contact.aspx">联系我们</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<!--- top-nav ----->
					<!----- script-for-nav ---->
				<script>
				    $("span.menu").click(function () {
				        $(".top-nav ul").slideToggle("slow", function () {
				            // Animation complete.
				        });
				    });
				</script>
				<!----- script-for-nav ---->
			
			</div>
			</div>
		<!---- header ----->
		<!------ about ---->
		<div class="about">
			<!--- bradcrumbs ---->
			<div class="breadcrumbs">
				<div class="container">
					<div class="breadcrumbs-left">
						<h1>新闻详情</h1>
					</div>
					<div class="breadcrumbs-right">
						<ul>
							<li><a href="../index.aspx">Home</a> <label>:</label></li>
							<li>新闻详情</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!--- bradcrumbs ---->
		</div>
		<div class="about-top-grids">
			<div class="container">
				<div class="about-wel wel-head text-center">
					<h3><span><asp:Label ID="title" runat="server" ></asp:Label></span></h3>
					<p>作者：<asp:Label ID="author" runat="server"></asp:Label>
                    &nbsp; 来源：
                    <asp:Label ID="ly" runat="server"></asp:Label>
                    &nbsp; 发布时间：
                    <asp:Label ID="adddate" runat="server"></asp:Label></p>
				</div>
				<!---- about-grids ---->
				<div class="about-grids" style="text-align:center">
					<div class="about-grids-row1" style="width:80%;text-align:center;margin-left:10%">
						<p><asp:Label ID="content" runat="server"></asp:Label></p>
					</div>
				</div>
				<!---- about-grids ---->
		</div>
		<!------ about ---->
		</div>
		<!---- welcome-Note ---->
		<!---- welcome-Note ---->
		<!---- top-grids ---->
		<!---- top-grids ---->
	<!---- container ---->
		<div class="footer">
				<div class="top-footer">
					<div class="container">
						<div class="top-footer-grids">
							<div class="top-footer-grid">
								<h3>联系我们</h3>
								<ul class="address">
									<li><span class="map-pin"> </span>云南财经大学（呈贡校区）</li>
									<li><span class="mob"> </span>(0871) 159-1157-3832</li>
									<li><span class="msg"> </span><a>myc520hcm@qq.com</a></li>
								</ul>
							</div>
							<div class="top-footer-grid">
								<h3>最新动态</h3>
								<ul class="latest-post">
									<li><a href="#"><span class="icon1"> </span> Shipforme 平台即将上线！</a> </li>
                                    
								</ul>
							</div>
							<div class="top-footer-grid">
								<h3>版权申明</h3>
								<div class="tweet-box">
								  <div class="tweet-box-info">
									  <p>&copy; Copyright 2018 Template by 无言的叶 | Web项目开发组</p>
									  <p>滇ICP备18002319号 <img src="../images/batb1.png" width="20" height="20" alt=""/></p>
									
									</div>
									<div class="clear"> </div>
							  </div>
								<div class="tweet-box">
								  <div class="clear"> </div>
							  </div>
							</div>
							<div class="clear"> </div>
						</div>
					</div>
				</div>
				<!----start-bottom-footer---->
				<div class="bottom-footer">
					<div class="container">
					  <div class="clear"> </div>
					</div>
				</div>
				<!----//End-bottom-footer---->
			</div>
	</body>
</html>

