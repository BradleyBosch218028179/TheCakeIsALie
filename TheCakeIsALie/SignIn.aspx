﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="TheCakeIsALie.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" type = "text/css" href = "css/SignIn.css"/>
     <div id="templatemo_content_panel">
        <div id="templatemo_content_wrapper">

            <div id="templatemo_content">

                <div id="content_left">

                    <div class="post_section">
                        <div class="post_header">
                            <div class="post_title_info">
                                <br>
                                <div style="float: left" class="post_title">Sign in Gamer</div>
                                </br>
<div id="login-box">
  <form runat="server" class="left">
   
      <!--All the back end needs to be done for the username, email, passwords-->

    <label>Username:</label>
      <br /><br />
    <input type="text" name="username" placeholder="Username" runat ="server" id ="Username"/>
       <label>Email:</label>
      <br /><br />
    <input type="text" name="email" placeholder="E-mail" runat ="server" id ="Email"/>
       <label>Password:</label>
      <br /><br />
    <input type="password" name="password" placeholder="Password" runat ="server" id ="Password"/>
       <label>Retype Password:</label>
      <br /><br />
    <input type="password" name="password2" placeholder="Retype password" runat ="server" id ="Password2"/>
    
    <asp:Label ID="error" style="font-size:22px;color:red;font-weight:900;"  runat="server" Text="Incorrect Password or Username" visible="false"/>
    <br />
      <!--This submit button must redirect them to the producst page-->
    <asp:Button runat="server"  id="signin2" type="submit" name="signup_submit" Text="Sign In" onclick="Signin_Click" />
  </form>
  
  <div class="right">
    
     <span class="loginwith">Sign in with social network:</span>

    <button runat="server" class="social-signin facebook">Log in with facebook</button>
    <button class="social-signin twitter">Log in with Twitter</button>
    <button class="social-signin google">Log in with Google+</button>
  </div>
  <div class="or">OR</div>
</div>
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


