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
    public partial class InstructorLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LT-1473\SQLSERVER2016;Initial Catalog=CMS_Project;User ID=sa;Password=Naveen@2001;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText="select * from [dbo].[Instructor] where [Tusername]=@[Tusername]";
            cmd.Connection=con;
            SqlDataReader dr=cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Redirect("InstructorPage.aspx");
            }
            else
            {
                LabMsg.Text = "Failed to Login";
            }
        }
    }
}