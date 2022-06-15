<%@ Page Title="" Language="C#" MasterPageFile="~/CMC.Master" AutoEventWireup="true" CodeBehind="Instructor.aspx.cs" Inherits="CMS_Project.Instructor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Instructor .. !</h1>
     <div style="background-color:azure; height:150px; width:350px">
          <table border="1">
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="TxtInsName" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>UserName</td>
                <td>
                    <asp:TextBox ID="TxtInsUserName" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="TxtInsPassword" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TxtInsEmail" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>Course</td>
                   <td>
                       <asp:DropDownList ID="DdlCourse" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="Cname" DataValueField="Cname">
                           <asp:ListItem value="0" Text="--select--"></asp:ListItem>
                       </asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMS_ProjectConnectionString %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
                   </td>
            </tr>
                          <tr>
                <td>
                    <asp:Button ID="ButCreateIns" runat="server" Text="Register" OnClick="ButCourse_Click" /></td>
                <td>
                    <asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>
              </table>
         </div>
</asp:Content>
