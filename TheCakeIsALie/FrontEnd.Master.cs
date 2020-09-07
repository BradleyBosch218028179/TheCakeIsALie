using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class FrontEnd : System.Web.UI.MasterPage
    {
        private Game_ServiceClient SC = new Game_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["LoggedInUserID"] = "4";
            if (Session["LoggedInUserID"] != null)
            {
                User CurrentUser = SC.getUser(Int32.Parse(Session["LoggedInUserID"].ToString()));
                if (CurrentUser.USer_Type.Equals("Admin"))
                {
                    AdminOnly.Visible = true;
                }
                else
                {
                    AdminOnly.Visible = false;
                }


            }
            else
            {
                AdminOnly.Visible = false;
            }
            
        }
    }
}