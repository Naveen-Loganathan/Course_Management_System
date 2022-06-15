<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="CMS_Project.StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <h1>Course Management System</h1>
    <div style="background-color:azure"; height="150px"; width="250px">
    
        <table border="1">
            <tr>
                <td>
                  Select Course
                </td>
                </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDowncourse1" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="Cname" DataValueField="Cname">
                        <asp:ListItem value="0" Text="--select--"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMS_ProjectConnectionString4 %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
                </td>
            </tr>        
            <tr>
                <td>
                    <asp:Button ID="Buttoncourse1" runat="server" Text="submit" OnClick="Buttoncourse_Click" />
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
