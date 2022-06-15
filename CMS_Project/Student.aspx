<%@ Page Title="" Language="C#" MasterPageFile="~/CMC.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="CMS_Project.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Student .. !</h1>
     <div style="background-color:azure; height:150px; width:350px">
          <table border="1">
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="TxtStuName" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>UserName</td>
                <td>
                    <asp:TextBox ID="TxtStuUserName" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="TxtStuPassword" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TxtStuEmail" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>Course</td>
                   <td>
                       <asp:DropDownList ID="DdlCourse1" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="false" DataTextField="Cname" DataValueField="Cname">
                           <asp:ListItem value="0" Text="--select--"></asp:ListItem>
                       </asp:DropDownList>
                      
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMS_ProjectConnectionString2 %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
                      
                   </td>
            </tr>
                          <tr>
                <td>
                    <asp:Button ID="ButCreateStu" runat="server" Text="Register Student" OnClick="ButCourse_Click" /></td>
                <td>
                    <asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>
              </table>
         </div>
</asp:Content>
