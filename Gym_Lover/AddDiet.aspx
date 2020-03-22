<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDiet.aspx.cs" Inherits="Gym_Lover.AddDiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
     <br /><br /><br />

    <div class="container-fluid">
        <div class="col-md-12 mail-grid1-form ">
				<h3 class="title-w3-agile-sub"> <span> Add Diet</span></h3>
				
                    <asp:TextBox ID="txtName" name="txtName" placeHolder="Name" runat="server"></asp:TextBox>

					<asp:TextBox ID="txtDetails" name="txtDetails" placeHolder="Details" runat="server"></asp:TextBox>


					
            <asp:Button ID="BtnAdd" runat="server" Text="Add " OnClick="BtnAdd_Click"  />
				
			</div>
        <h1 id="rslt" runat="server">


        </h1>
    </div>

</asp:Content>
