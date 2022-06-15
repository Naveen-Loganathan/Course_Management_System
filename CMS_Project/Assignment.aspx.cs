using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS_Project
{
    public partial class Assignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butsubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLoginPage.aspx");
        }
    }
}