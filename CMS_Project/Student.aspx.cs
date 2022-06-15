using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CMS_Project
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButCourse_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Student] (Sname,Susername,Sppassword,Semail,Scourse) values (@Sname,@Susername,@Sppassword,@Semail,@Scourse)";
            SqlCommand sqlco = new SqlCommand(sqlquery, sqlcon);
            sqlcon.Open();
            sqlco.Parameters.AddWithValue("@Sname", TxtStuName.Text);
            sqlco.Parameters.AddWithValue("@Susername",TxtStuUserName.Text );
            sqlco.Parameters.AddWithValue("@Sppassword", TxtStuPassword.Text);
            sqlco.Parameters.AddWithValue("@Semail", TxtStuEmail.Text);
            sqlco.Parameters.AddWithValue("@Scourse", DdlCourse1.SelectedItem.Text);
            sqlco.ExecuteNonQuery();
            LabMsg.Text = "Registered Successfully!";
            sqlcon.Close();
        }
    }
}