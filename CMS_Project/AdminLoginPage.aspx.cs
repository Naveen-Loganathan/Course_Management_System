using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS_Project
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdLogin_Click(object sender, EventArgs e)
        {
            if(TxtAdminUsername.Text=="Admin" && TxtAdminPwd.Text=="Admin123")
            {
                Session["Adminname"] = "Welcome" + TxtAdminUsername.Text;
                    Response.Redirect("AdminPage.aspx");
            }
                    else
            {
                LabMsg.Text = "Failed to Login";
            }
                    
        }
    }
}