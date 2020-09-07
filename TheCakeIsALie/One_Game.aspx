<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="One_Game.aspx.cs" Inherits="TheCakeIsALie.One_Game" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    
   <main class="container">
 
  <link rel="stylesheet" type = "text/css" href = "css/One_product.css"/>

  <%--<!-- Left Column / game Image -->--%>
  <div class="left-column">
    <img src="css/images/battlefield.jpg" alt=""/>
  </div>
 
 
  <!-- Right Column -->
  <div class="right-column" runat="server">
 
    <!-- Product Description -->
      <!-- For database it will be a VARCHAR-->
    <div class="product-description">
      <span id="type" runat="server"></span>
      <h1 id="title" runat="server"></h1>
      <p id="descrp" runat="server"> </p>
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
<form runat="server">
    <div class="product-price">
      <span id="price" runat="server">R 200</span>
      <asp:Button runat="server" ID="btnCart" Text="Add To Cart"/> 
     <asp:Button runat="server" ID="btnPurchase" Text="Purchase Game"/>
       <asp:Button runat="server" ID="btnBack" Text="Search more games"/>
    </div>
    </form>
      


    </div>
</main>
    <br />
    <br />
    <br />
</asp:Content>
