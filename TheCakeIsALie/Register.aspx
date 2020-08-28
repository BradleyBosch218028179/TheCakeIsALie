<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TheCakeIsALie.Register" %>
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
                                <div style="float: left" class="post_title">Register Gamer</div>
                                </br>
                                <br />
   
  <div class="left">
   
      <!--All the back end needs to be done for the username, email, passwords, address and contact details. Including REGEX on front end-->


    <label>Username:</label>
      <br /><br />
    <input type="text" name="username" placeholder="Username" runat ="server" id ="Username"/>
       <label>Email:</label>
      <br /><br />
    <input type="password" name="password" placeholder="Password" runat ="server" id ="Password"/>
       <label>Retype Password:</label>
      <br /><br />
    <input type="password" name="password2" placeholder="Retype password" runat ="server" id ="Password2"/>

     <!--This submit button must redirect them to the producst page-->
    <input runat= "server" id="register"  type= "submit" name="register_submit" value="Register" onclick="Register_Click"/>

      </div>

      <div class="right">
     <label>Email:</label>
      <br /><br />
        <input type="text" name="email" placeholder="E-mail" runat ="server" id ="Email"/>
       <label>Address:</label>
      <br /><br />
    <input type="text" name="address" placeholder="Adress" runat ="server" id ="Address"/>
     <label>Cellphone number:</label>
      <br /><br />
    <input type="text" name="Cellphone number" placeholder="Cellphone number" runat ="server" id ="Cellphone"/>
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
