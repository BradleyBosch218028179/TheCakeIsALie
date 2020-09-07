<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="TheCakeIsALie.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <script>
</script>
     

    <form runat="server">
        <label><a href="Add_Game.aspx">Add New Game</a></label>

        <asp:Table runat="server" ID="tblData" Style="width: 80%; padding: 20px 40px 20px 40px;">
            <asp:TableRow>
                <asp:TableHeaderCell>Title</asp:TableHeaderCell>
                <asp:TableHeaderCell>Type</asp:TableHeaderCell>
                <asp:TableHeaderCell>Rating</asp:TableHeaderCell>
                <asp:TableHeaderCell>Quantity</asp:TableHeaderCell>
                <asp:TableHeaderCell>Number of Comments</asp:TableHeaderCell>
                <asp:TableHeaderCell>Description</asp:TableHeaderCell>
                <asp:TableHeaderCell>Edit</asp:TableHeaderCell>
                <asp:TableHeaderCell>Delete</asp:TableHeaderCell>
            </asp:TableRow>
        </asp:Table>
    </form>






</asp:Content>
