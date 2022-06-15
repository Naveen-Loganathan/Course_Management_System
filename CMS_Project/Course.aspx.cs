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
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButCourse_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Coursetable] (Cname) values (@Cname)";
            SqlCommand sqlco = new SqlCommand(sqlquery, sqlcon);
            sqlcon.Open();
            sqlco.Parameters.AddWithValue("@Cname", TxtCourseName.Text);
            sqlco.ExecuteNonQuery();
            LabMsg.Text = "The Course " + TxtCourseName.Text + " is Saved Successfully!";
            sqlcon.Close();
        }
    }
}