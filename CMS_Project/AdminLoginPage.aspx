<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="CMS_Project.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
         <div style="background-color:azure"; height="150px"; width="250px">
        <table border="1">
            <tr>
                <td>Admin Username</td>
                <td><asp:TextBox ID="TxtAdminUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Admin Password</td>
                <td><asp:TextBox ID="TxtAdminPwd" runat="server" TextMode="Password" Height="23px" Width="181px"></asp:TextBox></td>
            </tr>
            <td><asp:Button ID="AdLogin" runat="server" Text="AdminLogin" OnClick="AdLogin_Click"></asp:Button></td>
            <td><asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Red"></asp:Label></td>
        </table>
             </div>
    </center>
    </div>
    </form>
</body>
</html>
