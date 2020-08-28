<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="One_Game.aspx.cs" Inherits="TheCakeIsALie.One_Game" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    
   <main class="container">
 
  <link rel="stylesheet" type = "text/css" href = "css/One_product.css"/>

  <!-- Left Column / game Image -->
  <div class="left-column">
    <img src="css/images/battlefield.jpg" alt=""/>
  </div>
 
 
  <!-- Right Column -->
  <div class="right-column">
 
    <!-- Product Description -->
      <!-- For database it will be a VARCHAR-->
    <div class="product-description">
      <span>Strategy Game</span>
      <h1>Battlefield 3 End Game</h1>
      <p>The preferred choice of a vast range of adventures and a lot of combat </p>
    </div>
 
      <!-- For database it will be a VARCHAR-->
       <div class="trailer-config">
        <a href="#">Watch the trailer</a>
      </div>
      <br />
      <br />

  <!-- For database it will be a INT-->
    <label>Number Of Copies:</label>
      <br /><br />
    <input type="number" name="copies" placeholder="Number Of Copies" runat ="server" id ="copies"/>
      <br />
      <br />

      <!-- For database it will be a MONEY-->
      <!-- Product Pricing -->
    <div class="product-price">
      <span>R 200</span>
      <a href="#" class="cart-btn">ADD TO CART</a>
    </div>

    </div>
</main>
    <br />
    <br />
    <br />
</asp:Content>
