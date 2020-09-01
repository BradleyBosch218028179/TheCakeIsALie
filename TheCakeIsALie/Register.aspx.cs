using TheCakeIsALie.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheCakeIsALie
{
    public partial class Register : System.Web.UI.Page
    {
        Service1Client SC = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            if (Password.Value == Password2.Value)
            {
                int registered = SC.Register(Username.Value, Password.Value, Email.Value, Address.Value, Cellphone.Value);

                if (registered == 1)
                {
                    Response.Redirect("Games_Page.aspx");
                }
            }

        }
    }
}