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
   
  <form class="left" runat="server">
   
      <!--All the back end needs to be done for the username, email, passwords, address and contact details. Including REGEX on front end-->


    <label>Username:</label>
      <br /><br />
    <input type="text" name="username" placeholder="Username" runat ="server" id ="Username"/>
       <label>Password:</label>
      <br /><br />
    <input type="password" name="password" placeholder="Password" runat ="server" id ="Password"/>
       <label>Retype Password:</label>
      <br /><br />
    <input type="password" name="password2" placeholder="Retype password" runat ="server" id ="Password2"/>
       <label>First name:</label>
      <br /><br />
    <input type="text" name="first_Name" placeholder="First name" runat ="server" id ="first_Name"/>

     <!--This submit button must redirect them to the producst page-->
    <asp:Button runat="server"  id="register" type="submit" name="register_submit" Text="Register" onclick="Register_Click" />

      <div class="right">
     <label>Email:</label>
      <br /><br />
        <input type="text" name="email" placeholder="E-mail" runat ="server" id ="Email"/>
     <label>Surname:</label>
      <br /><br />
    <input type="text" name="Surname" placeholder="Surname" runat ="server" id ="Surname"/>
       <label>Address:</label>
      <br /><br />
    <input type="text" name="address" placeholder="Adress" runat ="server" id ="Address"/>
     <label>Cellphone number:</label>
      <br /><br />
    <input type="text" name="Cellphone number" placeholder="Cellphone number" runat ="server" id ="Cellphone"/>
    <asp:Label ID="error" style="font-size:22px;color:red;font-weight:900;"  runat="server" Text="Incorrect Password or Username" visible="false"/>
                
      </form>
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
