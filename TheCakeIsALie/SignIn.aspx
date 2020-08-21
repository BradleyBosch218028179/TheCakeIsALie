<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="TheCakeIsALie.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" type = "text/css" href = "SignIn.css"/>
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
  <div class="left">
   
      <!--All the back end needs to be done for the username, email, passwords-->

    <label>Username:</label>
      <br /><br />
    <input type="text" name="username" placeholder="Username" runat ="server"/>
       <label>Email:</label>
      <br /><br />
    <input type="text" name="email" placeholder="E-mail" runat ="server"/>
       <label>Password:</label>
      <br /><br />
    <input type="password" name="password" placeholder="Password" runat ="server"/>
       <label>Retype Password:</label>
      <br /><br />
    <input type="password" name="password2" placeholder="Retype password" runat ="server"/>
    
      <!--This submit button must redirect them to the producst page-->
    <input type="submit" name="signup_submit" value="Sign In" />
  </div>
  
  <div class="right">
    
     <span class="loginwith">Sign in with social network:</span>

    <button class="social-signin facebook">Log in with facebook</button>
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
</asp:Content>


