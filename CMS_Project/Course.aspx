<%@ Page Title="" Language="C#" MasterPageFile="~/CMC.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="CMS_Project.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Course .. !</h1>
    <div style="background-color:azure; height:150px; width:350px">
        <table border="1">
            <tr>
                <td>Course Name</td>
                <td>
                    <asp:TextBox ID="TxtCourseName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButCourse" runat="server" Text="Insert New Course" OnClick="ButCourse_Click" /></td>
                <td>
                    <asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>
