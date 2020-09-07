using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;


namespace TheCakeIsALie
{

    public partial class Register : System.Web.UI.Page
    {
        Game_ServiceClient SC = new Game_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            error.Visible = false;

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            if (Password.Value != Password2.Value)
            {
                error.Text = "Passwords do not match";
                error.Visible = true;
                Password.Value = "";
                Password2.Value = "";
            }
            else
            {
                string username = Username.Value;
                string password = Password.Value;
                string password2 = Password2.Value;
                string email = Email.Value;
                string cellNum = Cellphone.Value;
                string address = Address.Value;
                string First_Name = first_Name.Value;
                string surname = Surname.Value;

                //Add the user
                int registered = SC.Register(First_Name, surname, email, password, "Customer", username, cellNum, address);

                if (registered == 1)
                {
                    Response.Redirect("SignIn.aspx");
                }
                else if (registered == -1)
                {
                    error.Text = "Something went wrong, please try again later";
                    error.Visible = true;
                }
                else if (registered == 0)
                {
                    error.Text = "The email already exists";
                    error.Visible = true;
                    Email.Value = "";
                }
            }
        }
    }
}