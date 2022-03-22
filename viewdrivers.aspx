<%@ Page Title="View Chefs" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="viewdrivers.aspx.cs" Inherits="viewdrivers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
	  <div id="view">
          <div class="post">
					<h2>Driver List</h2>
              
					
				</div>				
				<p>
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="did" DataSourceID="SqlDataSource1" CssClass="grid" BackColor="White" BorderColor="#ccc" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7"/>
                        <Columns>
                            <asp:BoundField DataField="did" HeaderText="did" InsertVisible="False" 
                                ReadOnly="True" SortExpression="did" />
                            <asp:BoundField DataField="surname" HeaderText="surname" 
                                SortExpression="surname" />
                            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                                SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                                SortExpression="lastname" />
                            <asp:BoundField DataField="address" HeaderText="address" 
                                SortExpression="address" />
                            <asp:BoundField DataField="qualification" HeaderText="qualification" 
                                SortExpression="qualification" />
                            <asp:BoundField DataField="experience" HeaderText="experience" 
                                SortExpression="experience" />
                            <asp:ImageField HeaderText="Image" DataImageUrlField="imageurl" ControlStyle-Height="50px" ControlStyle-Width="70px" />
 
                                
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle Font-Bold="True" CssClass="tabgrid" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E1E1E1" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#e1e1e1" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ellac_cDBConnectionString %>" 
                        SelectCommand="SELECT [did], [surname], [firstname], [lastname], [address], [qualification], [experience], [imageurl] FROM [drivers]">
                    </asp:SqlDataSource>
                    
                    </p>

                    
			</div>
    </asp:Content>


<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
			<!-- Sidebar -->
			<div id="sidebar1">
                <div class="box">
                    <h2>
                        Quick Links</h2>
                    <ul>
                    <li><a title="Aenean" href="regdrivers.aspx">Register Driver</a></li>

                        <li><a title="Aenean" href="viewdrivers.aspx">View Drivers</a></li>
                        <li><a title="Suspendisse" href="asigndrivers.aspx">Asign Drivers</a></li>
                        <li><a title="Pellentesque" href="viewPostedDrivers.aspx">View Posted Drivers</a></li>
                        <li><a title="Mauris" href="#">Logout</a></li>
                        </ul>
                </div>
    </div>
</asp:Content>



