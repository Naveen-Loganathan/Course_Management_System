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
    public partial class Instructor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButCourse_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Instructor] (Tname,Tusername,Tpassword,Temail,Tcourse) values (@Tname,@Tusername,@Tpassword,@Temail,@Tcourse)"; 
            SqlCommand sqlco = new SqlCommand(sqlquery, sqlcon);
            sqlcon.Open();
            sqlco.Parameters.AddWithValue("@Tname", TxtInsName.Text);
            sqlco.Parameters.AddWithValue("@Tusername", TxtInsUserName.Text);
            sqlco.Parameters.AddWithValue("@Tpassword", TxtInsPassword.Text);
            sqlco.Parameters.AddWithValue("@Temail", TxtInsEmail.Text);
            sqlco.Parameters.AddWithValue("@Tcourse", DdlCourse.SelectedItem.Text);
            sqlco.ExecuteNonQuery();
            LabMsg.Text = "Registered Successfully!";
            sqlcon.Close();
        }
    }
}