using TheCakeIsALie.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheCakeIsALie
{
    public partial class SignIn : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            int UserLogin = SC.Login(Username.Value, Password.Value);

            if (UserLogin != 0)
            {
                Session["LoggedInUserID"] = UserLogin;
                Response.Redirect("Games_Page.aspx");
            }
        }
    }
}