using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class All_Games : System.Web.UI.Page
    {
        private Game_ServiceClient SC;

        protected void Page_Load(object sender, EventArgs e)
        {
            SC = new Game_ServiceClient();
            var game_List = SC.getAllGames();
            String strDisplay = "";

            foreach (Game g in game_List )
            {
                strDisplay+= "<div class='game - image'><span class='play'><span class='name'>" + g.Game_Title + "</span></span> <a href = '#' >";
                strDisplay += "</div >";
                strDisplay += "<div class='game - image'> <img src=" + g.Game_Image + " alt='' /></a> </div>";
                strDisplay += "<div class='rating <p>RATING </p>";
                strDisplay +=" <div class='stars'";
                strDisplay += " <div class='stars-in'> ";
                strDisplay += "</div>  </div>";
                strDisplay += "<span class='comments'>" + g.Game_Num_Comments + "</span> </div>";

            }
            //game_page.InnerHtml = strDisplay;
        }

       

        protected void imageClick(object sender, ImageClickEventArgs e)
        {
            ImageButton im = (ImageButton)sender;
            string s = im.ID;
        }
    }
}