<%@ Page Language="C#" AutoEventWireup="true" CodeFile="club.aspx.cs" Inherits="admin_index_club" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>网站后台管理</title>
		<link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css"/>
        <link href="../../css/style_2.css" rel='stylesheet' type='text/css' />

	  
</head>
<body>
    <form id="form1" runat="server">
   <div class="layui-tab page-content-wrap">
		  <ul class="layui-tab-title">
		    <li class="layui-this">社团新建</li>
		    <li>社团列表</li>
		  </ul>
		  <div class="layui-tab-content">
		    <div class="layui-tab-item layui-show">
		    	<form class="layui-form"  style="width: 90%;padding-top: 20px;">
				  <div class="layui-form-item">
				    <label class="layui-form-label">社团名称：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="club_1" class="layui-input" runat="server" placeholder="不超过20个字"></asp:TextBox>
				     
				    </div>
				  </div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">社团类型：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="club_2" class="layui-input" runat="server" ></asp:TextBox>
				      
				    </div>
				  </div>
				   <div class="layui-form-item">
				    <label class="layui-form-label">社长：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="club_3" class="layui-input" runat="server" ></asp:TextBox>
				     
				    </div>
				  </div>
                    				   <div class="layui-form-item">
				    <label class="layui-form-label">副社长：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="club_4" class="layui-input" runat="server" ></asp:TextBox>
				     
				    </div>
				  </div>
                    				   <div class="layui-form-item">
				    <label class="layui-form-label">负责人电话：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="club_5" class="layui-input" runat="server" ></asp:TextBox>
				     
				    </div>
				  </div>
                    				   <div class="layui-form-item">
				    <label class="layui-form-label">社团人数：</label>
				    <div class="layui-input-block">
                        <asp:TextBox ID="club_6" class="layui-input" runat="server" placeholder="通常为50 人"></asp:TextBox>
				     
				    </div>
				  </div>
				  
				  <div class="layui-form-item">
				    <div class="layui-input-block">
                        <asp:Button ID="btn_Upload" runat="server" CssClass="layui-btn layui-btn-normal" Text="立即创建" OnClick="Button1_Click"/>

				    </div>
				  </div>
				</form>
		    </div>
		    <div class="layui-tab-item">
		    	<form style="width: 100%;padding-top: 20px;">
    <div>
        <asp:GridView ID="GridView1" CssClass="GridViewStyle" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="id">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                <HeaderStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="社团名称" SortExpression="name" >
                <HeaderStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="kind" HeaderText="社团类型" SortExpression="kind" >
                <HeaderStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="leader" HeaderText="社长" SortExpression="leader" >
                <HeaderStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="leader2" HeaderText="副社长" SortExpression="leader2" >
                <HeaderStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="number" HeaderText="负责人电话" SortExpression="number" >
                <HeaderStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="member_num" HeaderText="社团人数" SortExpression="member_num" >
                <HeaderStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField CommandName="Delete" Text="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('请谨慎操作！您确定注销该社团吗？')&quot;&gt;注销&lt;/div&gt;">
                <ItemStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [name], [kind], [leader], [leader2], [number], [member_num] FROM [club_info]" DeleteCommand="DELETE FROM [club_info] WHERE [id] = @original_id" InsertCommand="INSERT INTO [club_info] ([name], [kind], [leader], [leader2], [number], [member_num]) VALUES (@name, @kind, @leader, @leader2, @number, @member_num)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [club_info] SET [name] = @name, [kind] = @kind, [leader] = @leader, [leader2] = @leader2, [number] = @number, [member_num] = @member_num WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="kind" Type="String" />
                <asp:Parameter Name="leader" Type="String" />
                <asp:Parameter Name="leader2" Type="String" />
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="member_num" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="kind" Type="String" />
                <asp:Parameter Name="leader" Type="String" />
                <asp:Parameter Name="leader2" Type="String" />
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="member_num" Type="Int32" />
                <asp:Parameter Name="original_id" Type="Int32" />
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


