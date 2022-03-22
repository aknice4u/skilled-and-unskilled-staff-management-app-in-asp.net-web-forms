<%@ Page Title="View Chefs" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="viewchefs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
	  <div id="view">
          <div class="post">
					<h2>Welcome to Ellac C</h2>
              
					
				</div>				
				<p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" 
                        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#ccc" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" 
                        class="grid">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                            <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                            <asp:ImageField HeaderText="Image" DataImageUrlField="imageurl" ControlStyle-Height="50px" ControlStyle-Width="70px" />
                            <asp:TemplateField ControlStyle-Width="70">
	                        <ItemTemplate>
	                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("cid") %>' OnCommand="LinkButton_Click" Text="Full Profile" CssClass="linkbtn"> </asp:LinkButton> 
	                        </ItemTemplate>
	                        </asp:TemplateField>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ellac_cDBConnectionString %>" SelectCommand="SELECT [cid], [surname], [firstname], [lastname], [address], [phone], [qualification], [imageurl] FROM [chefs]"></asp:SqlDataSource>
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
                    <li><a title="Aenean" href="reg_chefs.aspx">Register Chefs</a></li>

                        <li><a title="Aenean" href="viewchefs.aspx">View Chefs</a></li>
                        <li><a title="Suspendisse" href="assignstaff.aspx">Asign Chefs</a></li>
                        <li><a title="Pellentesque" href="viewPostedchef.aspx">View Posted Chefs</a></li>
                        <li><a title="Pellentesque" href="disengagedriver.aspx">Dis-Engaged Chefs</a></li>
                        <li><a title="Pellentesque" href="viewclients.aspx">View Clients</a></li>
                        <li><a title="Mauris" href="#">Logout</a></li>
                        </ul>
                </div>
</div>
</asp:Content>



