using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class One_Game : System.Web.UI.Page
    {
        private Game_ServiceClient SC;
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Request.QueryString[Game_ID]
            SC = new Game_ServiceClient();
            Game cls_game = new Game();
            cls_game = SC.GetOneGame(6);

            title.InnerText = cls_game.Game_Title;
            type.InnerHtml = cls_game.Game_Type;
            descrp.InnerHtml = cls_game.Game_Descrp;
            price.InnerHtml = "R"+  cls_game.Game_price.ToString();

        }

    }
}