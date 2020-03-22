<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginZone.aspx.cs" Inherits="Gym_Lover.LoginZone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <style>
       .ok ul li {
            border:1px solid white;
            height:50px;
            width:100%;
            text-align:center;
            background-color:lightgrey;
           font-size:30px;
        }
           .ok ul li:hover {
                background-color:lightblue;
                color:black;
            }
    </style>
    <br/>
    <div class="container ok">
    <ul>
        <li><a href="ViewDiet.aspx">View Diet </a></li>
        <li><a href="AddDiet.aspx">Add Diet</a></li>
        <li><a href="RegisterMember.aspx">Add Member</a></li>
        <li><a href="AddPackage.aspx">View Package </a></li>
        <li><a href="ViewContact.aspx">View Message </a></li>

    </ul>
        </div>
</asp:Content>
