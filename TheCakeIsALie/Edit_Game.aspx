<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Edit_Game.aspx.cs" Inherits="TheCakeIsALie.Edit_Game"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" type = "text/css" href = "css/Register.css"/>
     <div id="templatemo_content_panel">
        <div id="templatemo_content_wrapper">

            <div id="templatemo_content">

                <div id="content_left">

                    <div class="post_section">
                        <div class="post_header">
                            <div class="post_title_info">
                                <br>
                                <div style="float: left" class="post_title">Edit Game</div>
                                </br>
                                <br />
   
  <div class="left">
   
      <!--All the back end needs to be done for the editing a product.-->

      <!-- For database it will be a VARCHAR-->
    <label>Description:</label>
      <br /><br />
    <input type="text" name="Description" placeholder="Description" runat ="server" id ="Description"/>

      <!-- For database it will be a VARCHAR-->
       <label>Type:</label>
      <br /><br />
    <input type="text" name="Type" placeholder="Type" runat ="server" id ="Type"/>

      <!-- For database it will be a INT-->
       <label>Rating:</label>
      <br /><br />
    <input type="text" name="Rating" placeholder="Rating" runat ="server" id ="Rating"/>
      
      <!-- For database it will be a MONEY-->
    <label>Price:</label>
      <br /><br />
    <input type="text" name="price" placeholder="Price" runat ="server" id ="Price"/>

      <!-- For database it will be a INT-->
     <label>Quantity:</label>
      <br /><br />
    <input type="number" name="quantity" placeholder="Qunatity" runat ="server" id ="Quantity"/>

   <!--This submit button must redirect them to the product page-->
    <input runat="server" id="edit" type="submit" name="Edit_submit" value="Edit Game" onclick="Add_Click" />
      </div>

      <div class="right">
    
       <!-- For database it will be a INT-->
     <label>Title Of Game:</label>
      <br /><br />
        <input type="text" name="game_title" placeholder="Title Of Game" runat ="server" id ="game_title"/>
   
      <!-- For database it will be a VARCHAR-->
       <label>Trailer source:</label>
      <br /><br />
    <input type="text" name="trailer_Source" placeholder="trailer Source" runat ="server" id ="Trailer_Source"/>

     <!-- For database it will be a VARCHAR-->
     <label>Games image:</label>
      <br /><br />
    <input type="text" name="Game_Image" placeholder="Game Image" runat ="server" id ="Game_Image"/>

          
    <!-- For database it will be a INT -> 0 for not a special and 1 for a sepecial-->
    <label>On special:</label>
      <br /><br />
    <input type="number" name="special" placeholder="Special" runat ="server" id ="special"/>

   <!-- For database it will be a INT-->
    <label>Number Of Comments:</label>
      <br /><br />
    <input type="number" name="comments" placeholder="Number Of Comments" runat ="server" id ="comments"/>

</div>    

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
 <br />
<br />
<br />
<br />
<br />
</div>
</div>
</div>
</div>
</div>
</asp:Content>
