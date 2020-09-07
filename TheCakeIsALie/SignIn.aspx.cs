using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class SignIn : System.Web.UI.Page
    {
        Game_ServiceClient SC = new Game_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            error.Visible = false;
        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            try
            {
                int UserID = SC.login(Email.Value, Password.Value);
                
                if (UserID == 0)
                {
                    error.Visible = true;
                }
                else
                {
                    Session["LoggedInUserID"] = UserID;
                    Response.Redirect("Home.aspx");
                }
            }
            catch (Exception ex)
            {
                //Telling user something went wrong, possibly was not able to connect to backend
                Response.Write("<script>alert('Something went wrong, pleasse try again later');</script>");
            }
        }
    }
}
