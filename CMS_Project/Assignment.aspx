<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="CMS_Project.Assignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <h1>Course Management System</h1>
        <h3>Assignment</h3> 
          <hr/>
        <h4>What is a lint?</h4>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <hr/>
        <h4>What is the output of this statement "printf("%d", (a++))"?</h4>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             <hr/>
        <h4>Why is a macro used in place of a function?</h4>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             <hr/>
        <h4>Directives are translated by the</h4>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <hr />
        <asp:Button ID="Butsubmit" runat="server" Text="Submit" OnClick="Butsubmit_Click" />
    </div>
    </form>
</body>
</html>
