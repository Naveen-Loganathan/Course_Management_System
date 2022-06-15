using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS_Project
{
    public partial class CMC : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Adminname"] != null)
            {
                LabAdminLogin.Text=Session["Adminname"].ToString();
            }
            else
            {
                Response.Redirect("AdminLoginPage.aspx");
            }
        }

        protected void LinkCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Course.aspx");
        }

        protected void LinkInstructor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Instructor.aspx");
        }

        protected void LinkStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }

        protected void LinkLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("HomePage.aspx");
        }
    }
}