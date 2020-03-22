<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gym_Lover._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
         table {
         height:200px;
         width:600px;
        }
        </style>
    <!--about-->
        <div data-target="about" class="about" id="about">
            <div class="container">
			<h3 class="title-w3-agile">Diet Details </h3>
				<div class="about-main">
				<div class="col-md-5 about-bgcolr-agileinfo">
					<div class="about-img-agileinfo">
					</div>
				</div>
				<div class="col-md-7 about-info-agileits">
					<h3 class="title-w3-agile-sub">About <span>Gym</span> Workout</h3>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th runat="server">Name</th>
                                                <th runat="server">Description</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color:lightblue;font-weight: bold;color: #FFFFFF; height:200px; width:600px;">
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
				    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GymConnectionString3 %>" SelectCommand="SELECT [Name], [Description] FROM [diet]"></asp:SqlDataSource>
				</div>
				
				</div>
				
			</div>
        </div>
<!--//about-->


<!--section5-->
<div data-target="gallery" class="gallery" id="gallery">
<!-- gallery -->
		<div class="container">
		<h3 class="title-w3-agile">Gallery</h3>
			<div class="agileits_portfolio_grids">
				<div class="col-md-3 agileits_portfolio_grid">
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/1.jpg">
							<img src="images/1.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/2.jpg">
							<img src="images/2.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/3.jpg">
							<img src="images/3.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 agileits_portfolio_grid">
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/4.jpg">
							<img src="images/4.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								 
							</div>
						</a>
					</div>
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/5.jpg">
							<img src="images/5.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/6.jpg">
							<img src="images/6.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 agileits_portfolio_grid">
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/7.jpg">
							<img src="images/7.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								<p>Aliquam in dolor.</p> 
							</div>
						</a>
					</div>
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/8.jpg">
							<img src="images/8.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/9.jpg">
							<img src="images/9.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								 
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 agileits_portfolio_grid">
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/10.jpg">
							<img src="images/10.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/11.jpg">
							<img src="images/11.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
					<div class="agileinfo_portfolio_grid hovereffect">
						<a class="cm-overlay" href="images/12.jpg">
							<img src="images/12.jpg" alt=" " class="img-responsive">
							<div class="overlay">
								<h4><span>Gym</span> Workout</h4>
								
							</div>
						</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!-- //gallery -->
</div>
<!--//section5-->
<!--section6-->
<div data-target="contact" class="contact" id="contact">
           <!--membership-->
<div class="plan">
	<h3 class="title-w3-agile">Gym classes this summer</h3>
	<h2>pay now and get <span>35%</span> off</h2>
	<div class="read-w3ls">
		<a class="member-btn-agileits page-scroll" href="#myModal2" data-toggle="modal" data-hover="LOGIN">Become a member</a>
	</div>
</div>
<!-- modal -->
	<div class="modal about-modal w3-agileits fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				</div> <!-- //login-page -->
			</div>
		</div>
	<!-- //modal --> 
<!--//membership-->


</asp:Content>
