<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="viewclients.aspx.cs" Inherits="viewclients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
	  <div id="view">
          <div class="post">
					<h2>Welcome to Ellac C</h2>
					
				</div>				
				<p>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="client_id" DataSourceID="SqlDataSource1" CssClass="grid" BackColor="White" BorderColor="#ccc" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7"/>
                        <Columns>
                            <asp:BoundField DataField="client_id" HeaderText="client_id" 
                                InsertVisible="False" ReadOnly="True" SortExpression="client_id" />
                            <asp:BoundField DataField="clientname" HeaderText="name" SortExpression="clientname" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="address" HeaderText="address" 
                                SortExpression="address" />
                            <asp:BoundField DataField="request_category" HeaderText="request_category" 
                                SortExpression="request_category" />
                                <asp:TemplateField ControlStyle-Width="70">
	                        <ItemTemplate>
	                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("client_id") %>' OnCommand="LinkButton_Click" Text="STAFF POSTED" CssClass="linkbtn"> </asp:LinkButton> 
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ellac_cDBConnectionString %>" 
                        SelectCommand="SELECT [client_id], [clientname], [phone], [address], [request_category] FROM [clients]">
                    </asp:SqlDataSource>

               </p>
			</div>
    </asp:Content>


