<%@ Page Language="C#" AutoEventWireup="true" CodeFile="netdisk.aspx.cs" Inherits="admin_index_netdisk" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="gridView1_RowDataBound" CssClass="GridViewStyle" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand" DataKeyNames="FileKey">
            <Columns>
                <asp:BoundField DataField="FileKey" SortExpression="FileKey" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileName" HeaderText="文件名" SortExpression="FileName" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileTime" HeaderText="上传时间" SortExpression="FileTime" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileUser" HeaderText="上传用户" SortExpression="FileUser" >
                 <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                 <asp:ButtonField CommandName="Download" Text="下载" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="Delete" Text="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定删除吗？')&quot;&gt;删除&lt;/div&gt;">
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [FileKey], [FileName], [FileType], [FileTime], [FileUser] FROM [net_disk]" DeleteCommand="DELETE FROM [net_disk] WHERE [FileKey] = @original_FileKey" InsertCommand="INSERT INTO [net_disk] ([FileKey], [FileName], [FileType], [FileTime], [FileUser]) VALUES (@FileKey, @FileName, @FileType, @FileTime, @FileUser)" UpdateCommand="UPDATE [net_disk] SET [FileName] = @FileName, [FileType] = @FileType, [FileTime] = @FileTime, [FileUser] = @FileUser WHERE [FileKey] = @original_FileKey">
            <DeleteParameters>
                <asp:Parameter Name="original_FileKey" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FileKey" Type="String" />
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="FileType" Type="String" />
                <asp:Parameter Name="FileTime" Type="DateTime" />
                <asp:Parameter Name="FileUser" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="FileType" Type="String" />
                <asp:Parameter Name="FileTime" Type="DateTime" />
                <asp:Parameter Name="FileUser" Type="String" />
                <asp:Parameter Name="original_FileKey" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>


