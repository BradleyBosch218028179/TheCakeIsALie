<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TheCakeIsALie.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <link rel="stylesheet" type = "text/css" href = "Register.css"/>
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
    <input type="text" name="username" placeholder="Username" runat ="server"/>
       <label>Email:</label>
      <br /><br />
    <input type="password" name="password" placeholder="Password" runat ="server"/>
       <label>Retype Password:</label>
      <br /><br />
    <input type="password" name="password2" placeholder="Retype password" runat ="server"/>

     <!--This submit button must redirect them to the producst page-->
    <input type="submit" name="register_submit" value="Register" />
      </div>

      <div class="right">
     <label>Address:</label>
      <br /><br />
        <input type="text" name="email" placeholder="E-mail" runat ="server"/>
       <label>Password:</label>
      <br /><br />
    <input type="text" name="address" placeholder="Adress" runat ="server"/>
     <label>Cellphone number:</label>
      <br /><br />
    <input type="text" name="Cellphone number" placeholder="Cellphone number" runat ="server"/>
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
</asp:Content>
