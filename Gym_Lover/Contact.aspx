<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Gym_Lover.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <br /><br /><br />

    <div class="container-fluid">
        <div class="col-md-12 mail-grid1-form ">
				<h3 class="title-w3-agile-sub"> <span> Send a Message</span></h3>
				
					
              <asp:TextBox ID="txtName" name="txtName" placeHolder="Name" runat="server"></asp:TextBox>

					<asp:TextBox ID="txtEmail" name="txtEmail" placeHolder="Email " runat="server"></asp:TextBox>
            <asp:TextBox ID="txtMsg" name="txtMsg" placeHolder="Message" runat="server"></asp:TextBox>

					
            <asp:Button ID="BtnAdd" runat="server" Text="Send Message " OnClick="BtnAdd_Click"  />
				
			</div>
        <h1 id="rslt" runat="server">


        </h1>

				
			</div>

    

</asp:Content>
