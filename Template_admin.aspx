<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Template_admin.aspx.cs" Inherits="second_admin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
       
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../../js/jquery.min.js"></script>
        
		<link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
		<!----webfonts--->
		<!---//webfonts--->
	</head>
<body>
    <form id="form1" runat="server" >
    <div style="text-align:center">
        <p class="font_color_1" style="font-size:1.3em">
            ——选择模板文件——
        </p>
        <p class="font_color_2">
            <asp:FileUpload ID="fileUpload" runat="server" Height="2em" Width="18em" />
        <br />

        <br />

        <asp:Button ID="btn_Upload" runat="server" CssClass="contact_anniu" Text="上传" OnClick="btn_Upload_Click1" ForeColor="#464646"/>
            <br />
           <asp:Label ID="lblMessage" CssClass="print_info" runat="server" Text=""></asp:Label></p> 
      

    </div>
        <div style="width:98%;margin:0 auto">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FileKey" DataSourceID="SqlDataSource1" Width="100%">
                <Columns>
                    <asp:BoundField DataField="FileName" HeaderText="文件名" SortExpression="FileName" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FileSize" HeaderText="文件大小" SortExpression="FileSize" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FileType" HeaderText="文件类型" SortExpression="FileType" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FileTime" HeaderText="上传时间" SortExpression="FileTime" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FileKey" HeaderText="Key" ReadOnly="True" SortExpression="FileKey" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [template_file] WHERE [FileKey] = @FileKey" InsertCommand="INSERT INTO [template_file] ([FileName], [FileSize], [FileType], [FileTime], [FileContent], [FileKey]) VALUES (@FileName, @FileSize, @FileType, @FileTime, @FileContent, @FileKey)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [FileName], [FileSize], [FileType], [FileTime], [FileContent], [FileKey] FROM [template_file]" UpdateCommand="UPDATE [template_file] SET [FileName] = @FileName, [FileSize] = @FileSize, [FileType] = @FileType, [FileTime] = @FileTime, [FileContent] = @FileContent WHERE [FileKey] = @FileKey">
                <DeleteParameters>
                    <asp:Parameter Name="FileKey" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FileName" Type="String" />
                    <asp:Parameter Name="FileSize" Type="Int32" />
                    <asp:Parameter Name="FileType" Type="String" />
                    <asp:Parameter Name="FileTime" Type="DateTime" />
                    <asp:Parameter Name="FileContent" Type="Object" />
                    <asp:Parameter Name="FileKey" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FileName" Type="String" />
                    <asp:Parameter Name="FileSize" Type="Int32" />
                    <asp:Parameter Name="FileType" Type="String" />
                    <asp:Parameter Name="FileTime" Type="DateTime" />
                    <asp:Parameter Name="FileContent" Type="Object" />
                    <asp:Parameter Name="FileKey" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

