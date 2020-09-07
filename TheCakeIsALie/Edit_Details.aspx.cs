using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class Edit_Details : System.Web.UI.Page
    {
        Game_ServiceClient SC = new Game_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Check if the page has already been run for the first or second time

            if (!IsPostBack)
            {
                //Get the users ID

                int ID = Convert.ToInt32(Session["LoggedInUserID"]);

                //Check if the users logged in before editing

                if (ID != 0)
                {
                    //Get the users information
                    User user = SC.getUser(ID);

                    //Checks if the user exists

                    if (user != null)
                    {
                        //Assign the inputs to the users original data
                        first_Name.Value = user.User_FirstName;
                        Surname.Value = user.User_Surname;
                        Email.Value = user.User_Email;
                        Username.Value = user.User_Name;
                        Password.Value = user.User_Password;
                        Cellphone.Value = user.User_Cellphone;
                        Address.Value = user.User_Address;

                    }
                    //If the user does not exist
                    else
                    {
                        //Security purposes in case someone tried to change their session ID
                        errorUpdate.Visible = true;

                    }
                }
                else
                {
                    //If users not logged in notify the user and Redirect the user to the login or register page
                    errorSignin.Visible = true;
                    Response.Redirect("SignIn.aspx");
                }
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {

            //Validation to ensure edits are not empty

            if (first_Name.Value == "" || Surname.Value == "" || Email.Value == "" || Username.Value == "" || Password.Value == "" || Cellphone.Value == "" || Address.Value == "")
                {
                errorUpdate.Visible = true;
                //Stop the code from running
                return;
            }
            //Create the user with the edited information

            User EditedUser = new User
            {
                User_FirstName = first_Name.Value,
                User_Surname = Surname.Value,
                User_Email = Email.Value,
                User_Name = Username.Value,
                User_Password = Password.Value,
                User_Cellphone = Cellphone.Value,
                User_Address = Address.Value
            };

            //Get the users ID

            int ID = Convert.ToInt32(Session["LoggedInUserID"]);

            EditedUser.User_ID = ID;

            //Call the UpdateUser function and Check if the users information was susccesfully updated

            int SucessfulUpdate = SC.UpdateUser(EditedUser);

            if (SucessfulUpdate==1)
            {
                //If true display success
                Success.Visible = true;
            }
            else
            {
                //If false display an error
                errorUpdate.Visible = true;
            }
        }
    }
}
