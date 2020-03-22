<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gym_Lover.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <br /><br /><br />

    <div class="container-fluid">
        <div class="col-md-12 mail-grid1-form ">
				<h3 class="title-w3-agile-sub"> <span> Admin Login </span></h3>
				
                    <asp:TextBox ID="txtEmail" name="txtEmail" placeHolder="Admin" runat="server"></asp:TextBox>

					<asp:TextBox ID="txtPassword" name="txtPassword" placeHolder="Password" runat="server"></asp:TextBox>


					
            <asp:Button ID="BtnLogin" runat="server" Text="Sign IN" OnClick="BtnLogin_Click" />
				
			</div>
        <h1 id="rslt" runat="server">


        </h1>
    </div>
</asp:Content>
