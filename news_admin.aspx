<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news_admin.aspx.cs" Inherits="admin_index_news_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../../js/jquery.min.js"></script>
        
		<link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">


  <div style="width:98%;margin:0 auto">
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
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="news_adddate" HeaderText="发布时间" SortExpression="news_adddate" >
                     <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                     <asp:HyperLinkField DataNavigateUrlFields="news_id" DataNavigateUrlFormatString="../../second/news_list.aspx?id={0}" Target="_blank" Text="修改" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:HyperLinkField>
                    <asp:CommandField DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定删除吗？')&quot;&gt;删除&lt;/div&gt;" ShowDeleteButton="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                    <asp:ButtonField CommandName="check_resume" Text="查看" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
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
</body>
</html>
