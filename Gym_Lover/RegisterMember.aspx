<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterMember.aspx.cs" Inherits="Gym_Lover.RegisterMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



     <style>
         table {
            width:100%;
         }
        table, th {
            border:1px solid grey;
            height:30px;
           
            padding:10px;
           align-content:center;
        }
        td {
            padding:10px;
            align-content:center;
        }
         .container button {
          color:red;
         }

    </style>
    <br /><br /><br />
    <h1> Add Member </h1>

    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFFFFF; color: #284775;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TrainerLabel" runat="server" Text='<%# Eval("Trainer") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PackageLabel" runat="server" Text='<%# Eval("Package") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #999999;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TrainerTextBox" runat="server" Text='<%# Bind("Trainer") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PackageTextBox" runat="server" Text='<%# Bind("Package") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FeeTextBox" runat="server" Text='<%# Bind("Fee") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
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
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TrainerTextBox" runat="server" Text='<%# Bind("Trainer") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PackageTextBox" runat="server" Text='<%# Bind("Package") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FeeTextBox" runat="server" Text='<%# Bind("Fee") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF; color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TrainerLabel" runat="server" Text='<%# Eval("Trainer") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PackageLabel" runat="server" Text='<%# Eval("Package") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                            <th runat="server"></th>
                                            <th runat="server">id</th>
                                            <th runat="server">Name</th>
                                            <th runat="server">Contact</th>
                                            <th runat="server">Trainer</th>
                                            <th runat="server">Package</th>
                                            <th runat="server">Fee</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
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
                        <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TrainerLabel" runat="server" Text='<%# Eval("Trainer") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PackageLabel" runat="server" Text='<%# Eval("Package") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GymConnectionString5 %>" DeleteCommand="DELETE FROM [Member] WHERE [id] = @id" InsertCommand="INSERT INTO [Member] ([Name], [Contact], [Trainer], [Package], [Fee]) VALUES (@Name, @Contact, @Trainer, @Package, @Fee)" SelectCommand="SELECT * FROM [Member] ORDER BY [id] DESC" UpdateCommand="UPDATE [Member] SET [Name] = @Name, [Contact] = @Contact, [Trainer] = @Trainer, [Package] = @Package, [Fee] = @Fee WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="Trainer" Type="String" />
                        <asp:Parameter Name="Package" Type="String" />
                        <asp:Parameter Name="Fee" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="Trainer" Type="String" />
                        <asp:Parameter Name="Package" Type="String" />
                        <asp:Parameter Name="Fee" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <h3>   <a href="LoginZone.aspx">Back to Login Zone</a></h3>
            </div>


        </div>


    </div>


</asp:Content>
