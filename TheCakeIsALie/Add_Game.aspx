﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Add_Game.aspx.cs" Inherits="TheCakeIsALie.Add_Game1" %>
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
                                <div style="float: left" class="post_title">ADD Game</div>
                                </br>
                                <br />
   <form runat="server">
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

      <!-- For database it will be a INT-->
    <label>Game Status:</label>
      <br /><br />
      <asp:RadioButtonList ID="rbtnStatusList" runat="server">
              <asp:ListItem Selected="True">Active</asp:ListItem>
              <asp:ListItem>Not Active</asp:ListItem>
          </asp:RadioButtonList>

   <!--This submit button must redirect them to the product page-->
    <asp:Button runat="server" id="Add" type="submit" name="Add_submit" Text="Add Game" onclick="Add_Click" />
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
          <br />
      <br />
          <asp:RadioButtonList ID="rbtnSpecial" runat="server" OnSelectedIndexChanged="rbtnSpecial_SelectedIndexChanged" AutoPostBack="True">
              <asp:ListItem Selected="True">Yes</asp:ListItem>
              <asp:ListItem>No</asp:ListItem>
          </asp:RadioButtonList>
          
       <br />
       <br />
   <!-- For database it will be a INT-->
          <div runat="server" id="DicsountLayout">
            <label>Discount:</label>
                  <br /><br />
                <input type="number" name="Discount" placeholder="Game Discount" runat ="server" id ="Discount" />
          </div>
    
   <!-- For database it will be a INT-->
    <label>Number Of Comments:</label>
      <br /><br />
    <input type="number" name="comments" placeholder="Number Of Comments" runat ="server" id ="comments"/>

    <asp:Label ID="error" style="font-size:22px;color:red;font-weight:900;"  runat="server" Text="" visible="false"/>
</div>    
       </form>

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
</div>
     </div>
</asp:Content>