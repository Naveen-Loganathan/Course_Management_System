using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS_Project
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLoginPage.aspx");
        }

        protected void ButInstructor_Click(object sender, EventArgs e)
        {
            Response.Redirect("InstructorLoginPage.aspx");
        }

        protected void ButStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLoginPage.aspx");
        }
    }
}