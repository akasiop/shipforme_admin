<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu2.aspx.cs" Inherits="admin_index_menu2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
       
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../../js/jquery.min.js"></script>
        <link href="./css/style.css" rel='stylesheet' type='text/css' />
		<link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
		
        <style type="text/css">
button:hover{
 text-decoration:underline;  /*鼠标放上去有下划线*/
}
</style>


   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            &nbsp;


            <asp:Label ID="Label1" runat="server" Text="服务端编号："></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" Text="确认添加" OnClick="Button1_Click" />


        &nbsp;<asp:Label ID="lblMessage" runat="server" Font-Size="1em" ForeColor="#EC005F"></asp:Label>


            <br />


        </div>
        <div>
        <asp:GridView ID="GridView1" CssClass="GridViewStyle" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="username" HeaderText="服务端编号" SortExpression="username" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="identity" HeaderText="身份" SortExpression="identity" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ShowCancelButton="False" ShowEditButton="True" ShowHeader="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
                <asp:CommandField ShowDeleteButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [user_service] WHERE [id] = @original_id" InsertCommand="INSERT INTO [user_service] ([username], [password], [identity]) VALUES (@username, @password, @identity)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [user_service]" UpdateCommand="UPDATE [user_service] SET [username] = @username, [password] = @password, [identity] = @identity WHERE [id] = @original_id" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="identity" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="identity" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
    </form>
</body>
</html>


