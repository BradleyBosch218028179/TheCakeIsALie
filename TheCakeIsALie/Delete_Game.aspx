﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Delete_Game.aspx.cs" Inherits="TheCakeIsALie.Delete_Game" %>
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
                                <div style="float: left" class="post_title">Delete Game</div>
                                </br>
                                <br />
   
  <form runat="server" class="left">
   
      <!--All the back end needs to be done for the deleting a product.-->

       <!-- For database it will be a INT and the field will be status-->
      <!-- If status is 1 then it is active, if status is 0 it is "Deleted"-->

      Title<label> of Game to delete:</label>
      <br /><br />

      <!--This submit button must redirect them to the product page-->
    <input type="text" name="Delete_Title" placeholder="Title of game to delete" runat ="server" id ="Delete_Title"/>
     <!--This submit button must redirect them to the producst page-->
    <asp:Button runat="server" id="delete" type="submit" name="Delete_submit" Text="Delete Game" onclick="Delete_Click" />
      </form>
</div>
    </div>
</asp:Content>
