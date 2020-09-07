using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class Delete_Game : System.Web.UI.Page
    {
        private Game_ServiceClient SC;

        protected void Page_Load(object sender, EventArgs e)
        {
            SC = new Game_ServiceClient();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            if (Session["LoggedInUserID"] == null)
            {
                //Response.Write("<script>alert('Something went wrong, pleasse try again later');Response.Redirect(SignIn.aspx");</script>");
                Response.Redirect("SignIn.aspx");
                return;
            }

            if(Delete_Title.Value == "")
            {
                Response.Write("<script>alert('Please fill in the Game Titles');</script>");
            }

            string strTitle = Delete_Title.Value;

            int iResult = SC.RemoveGame(strTitle);

            if (iResult == 0)
            {
                //Dont exsists
                Response.Write("<script>alert('Game Title does not Exists');</script>");
            }
            else if (iResult == 1)
            {
                //All Good
                Response.Write("<script>alert('Game Deleted');</script>");
            }
            else
            {
                Response.Write("<script>alert('Something went wrong, please try again later');</script>");
            }

        }
    }
}