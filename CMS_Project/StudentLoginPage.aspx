<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLoginPage.aspx.cs" Inherits="CMS_Project.StudentLoginPage" %>

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
             <h1>Course Management System</h1>
        <table border="1">
            <tr>
                <td>Student Username</td>
                <td><asp:TextBox ID="TxtStudentUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Student Password</td>
                <td><asp:TextBox ID="TxtStudentPwd" runat="server" TextMode="Password" Height="23px" Width="181px"></asp:TextBox></td>
            </tr>
            <td><asp:Button ID="StuLogin" runat="server" Text="StudentLogin" OnClick="AdLogin_Click"></asp:Button></td>
            <td><asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Red"></asp:Label></td>
        </table>
             </div>
    </center>
    </div>
    </form>
</body>
</html>
