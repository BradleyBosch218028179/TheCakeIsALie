using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheCakeIsALie.ServiceReference1;

namespace TheCakeIsALie
{
    public partial class AdminPage : System.Web.UI.Page
    {
        private Game_ServiceClient SC = new Game_ServiceClient();
        private List<Game> Games;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (true)
            {
                //tblData.Rows.Clear();

                Games = new List<Game>(SC.getAllGames());

                foreach (Game OneGame in Games)
                {
                    TableRow tr = new TableRow();
                    

                    TableCell Game_Title = new TableCell();
                    Game_Title.Text = OneGame.Game_Title;
                    tr.Cells.Add(Game_Title);


                    TableCell Game_Type = new TableCell();
                    Game_Type.Text = OneGame.Game_Type;
                    tr.Cells.Add(Game_Type);


                    TableCell Game_Rating = new TableCell();
                    Game_Rating.Text = OneGame.Game_Rating.ToString();
                    tr.Cells.Add(Game_Rating);


                    TableCell Game_Quantity = new TableCell();
                    Game_Quantity.Text = OneGame.Game_Quantity.ToString();
                    tr.Cells.Add(Game_Quantity);


                    TableCell Game_Num_Comments = new TableCell();
                    Game_Num_Comments.Text = OneGame.Game_Num_Comments.ToString();
                    tr.Cells.Add(Game_Num_Comments);


                    TableCell Game_Descrp = new TableCell();
                    Game_Descrp.Text = OneGame.Game_Descrp;
                    tr.Cells.Add(Game_Descrp);

                    //edit AND delete buttons

                    TableCell Editbtn = new TableCell();
                   
                    Button btnEdit = new Button();
                    btnEdit.Text = "Edit";
                    btnEdit.ID = "Edit" + OneGame.Game_Id.ToString();

                    btnEdit.ControlStyle.CssClass = "button";
                    btnEdit.Click += new EventHandler(Edit_Click);

                    Editbtn.Controls.Add(btnEdit);


                    tr.Cells.Add(Editbtn);
                    
                   



                    TableCell Deletebtn = new TableCell();
                    Button btnDelete = new Button();
                    btnDelete.Text = "Delete";
                    btnDelete.ID = "Del" + OneGame.Game_Id.ToString();
                    btnDelete.Click += new EventHandler(Delete_Click);

                    Deletebtn.Controls.Add(btnDelete);



                    tr.Cells.Add(Deletebtn);

                    
             



                    tblData.Rows.Add(tr);
                }

            }
            

            
        }


        public void Edit_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string buttonId = button.ID;

            Session["EditGame"] = buttonId;
            Response.Redirect("Edit_Game.aspx");
            return;
        }


        public void Delete_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string buttonId = button.ID;

            if (Session["LoggedInUserID"] == null)
            {
                Response.Write("<script language='javascript'>window.alert('Something went wrong, pleasse try again later');window.location='SignIn.aspx';</script>");
                //Response.Write("<script language='javascript'>window.alert('Popup message ');window.location='webform.aspx';</script>");
                //Response.Redirect("SignIn.aspx");
                return;
            }

            string strTitle = buttonId.Remove(0, 3);

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