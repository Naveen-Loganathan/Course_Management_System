<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CMS_Project.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 289px;
        }
        .auto-style2 {
            width: 289px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
    <center>
         <div>
        <h1>Course Managament System</h1>
        <div style="background-color:azure"; height="150px"; width="250px">
        <table border="1">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="ButAdmin" runat="server" Text="Admin" OnClick="ButAdmin_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="ButInstructor" runat="server" Text="Instructor" OnClick="ButInstructor_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="ButStudent" runat="server" Text="Student" OnClick="ButStudent_Click"></asp:Button>
                </td>
            </tr>
        </table>
            </div>
    </center>
    </div>
    </form>
</body>
</html>
