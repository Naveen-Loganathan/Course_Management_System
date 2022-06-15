<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorLoginPage.aspx.cs" Inherits="CMS_Project.InstructorLoginPage" %>

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
                <td>Instructor Username</td>
                <td><asp:TextBox ID="TxtInstructorUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Instructor Password</td>
                <td><asp:TextBox ID="TxtInstructorPwd" runat="server" TextMode="Password" Height="23px" Width="181px"></asp:TextBox></td>
            </tr>
            <td><asp:Button ID="InsLogin" runat="server" Text="InstructorLogin" OnClick="AdLogin_Click"></asp:Button></td>
            <td><asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Red"></asp:Label></td>
        </table>
             </div>
    </center>
    </div>
    </form>
</body>
</html>
