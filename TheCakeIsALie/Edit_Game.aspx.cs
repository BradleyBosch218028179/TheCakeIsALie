using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class Edit_Game : System.Web.UI.Page
    {
        private Game_ServiceClient SC = new Game_ServiceClient();
        private static string gameID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["EditGame"] == null)
                {
                    Response.Redirect("AdminPage.aspx");
                    return;
                }
                else
                {
                    gameID = Session["EditGame"].ToString();
                    gameID = gameID.Remove(0, 4);

                    Game clsGame = SC.GetOneGame(Int32.Parse(gameID));

                    Description.Value = clsGame.Game_Descrp;
                    Type.Value = clsGame.Game_Type;
                    game_title.Value = clsGame.Game_Title;
                    Rating.Value = clsGame.Game_Rating.ToString();
                    Price.Value = clsGame.Game_price.ToString();
                    Quantity.Value = clsGame.Game_Quantity.ToString();
                    Trailer_Source.Value = clsGame.Game_Trailer.ToString();
                    Game_Image.Value = clsGame.Game_Image;
                    Discount.Value = clsGame.Discount_Percentage.ToString();
                    comments.Value = clsGame.Game_Num_Comments.ToString();

                    if (clsGame.Game_Status == 0)
                    {
                        rbtnStatusList.SelectedIndex = 1;
                    }
                    rbtnStatusList.SelectedIndex = 0;

                    if (clsGame.Discount_Percentage > 0)
                    {
                        rbtnSpecial.SelectedIndex = 0;
                    }
                    else
                    {
                        rbtnSpecial.SelectedIndex = 1;
                    }
                    rbtnSpecial_SelectedIndexChanged(null, null);
                }
            }
            
        }

        protected void Edit_Click(object sender, EventArgs e)
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
            if (rbtnSpecial.SelectedIndex == 0)
            {
                onSPecial = 1;
                discount = 0;
            }
            else
            {
                discount = Int32.Parse(Discount.Value);
            }
           

            int NumCOmments = Int32.Parse(comments.Value);

            int status = 0;
            if (rbtnStatusList.SelectedIndex == 0)
            {
                status = 1;
            }
            //gameID = Session["EditGame"].ToString();
            var newGame = new Game
            {
                //Create a new game object with all the data from the database
                Game_Title = title,
                Game_Type = type,
                Game_Descrp = description,
                Game_Rating = rating,
                Game_Quantity = quanity,
                Game_Num_Comments = NumCOmments,
                Game_price = price,
                Game_Image = image_source,
                Game_Date_Added = DateTime.Today,
                Game_Trailer = trailer_Source,
                User_ID = Int32.Parse(Session["LoggedInUserID"].ToString()),
                Game_Status = 1,
                Game_Id = Int32.Parse(gameID),
                Discount_Percentage = discount
            };
            //title, type, description, onSPecial, rating, quanity, NumCOmments, price, discount, image_source, trailer_Source, Int32.Parse(Session["LoggedInUserID"].ToString()), status
            //Add the user
            int added = SC.EditGame(newGame);

            if (added == 1)
            {
                Response.Write("<script>alert('The Game has been edited');</script>");
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


    }
}