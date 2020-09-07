using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class Add_Game1 : System.Web.UI.Page
    {
        private Game_ServiceClient SC;
        protected void Page_Load(object sender, EventArgs e)
        {
             SC= new Game_ServiceClient();
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            if (Session["LoggedInUserID"] == null)
            {
                //Response.Write("<script>alert('Something went wrong, pleasse try again later');Response.Redirect(SignIn.aspx");</script>");
                Response.Redirect("SignIn.aspx");
                return;
            }


            //Add the new game
            string description = Description.Value;
            string type = Type.Value;
            string title = game_title.Value;
            int rating = Int32.Parse(Rating.Value);
            decimal price = Decimal.Parse(Price.Value);
            int quanity = Int32.Parse(Quantity.Value);
            string trailer_Source = Trailer_Source.Value;
            string image_source = Game_Image.Value;

            int discount;

            short onSPecial = 0;
            if (rbtnSpecial.SelectedIndex == 1){
                onSPecial = 0;
                discount = 0;
            }
            else
            {
                onSPecial = 1;
                discount = Int32.Parse(Discount.Value);
            }
            
            
            int NumCOmments = Int32.Parse(comments.Value);

            int status = 0;
            if(rbtnStatusList.SelectedIndex == 0)
            {
                status = 1;
            }

            //Session["LoggedInUserID"] = "4";

            //Add the user
            int added = SC.AddGame(title, type, description, onSPecial, rating, quanity, NumCOmments, price, discount, image_source, trailer_Source, Int32.Parse(Session["LoggedInUserID"].ToString()), status);

            if (added == 1)
            {
                Response.Write("<script>alert('The Game has been added');</script>");
            }
            else if (added == 0)
            {
                error.Text = "The game already exists";
                error.Visible = true;
            }
            else
            {
                error.Text = "Something went wrong, please try again later";
                error.Visible = true;
            }
        }

        protected void rbtnSpecial_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbtnSpecial.SelectedIndex == 1)
            {
                DicsountLayout.Visible = false;
            }
            else
            {
                DicsountLayout.Visible = true;
            }
        }




        //Onclick
        //Check if game exsists, with Game Title
        //Add game with users session ID
    }
}
