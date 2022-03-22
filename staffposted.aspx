<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="staffposted.aspx.cs" Inherits="staffposted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
	  <div id="view">
          <div class="post">
					<h2>Welcome to Ellac C</h2>
					
				</div>				
				<p>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid" BackColor="White" BorderColor="#ccc" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7"/>
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="remarks" HeaderText="remarks" 
                                SortExpression="remarks" />
                                <asp:BoundField DataField="clientname" HeaderText="CLIENT NAME" 
                                SortExpression="clientname" />
                                <asp:BoundField DataField="category" HeaderText="Staff Category" 
                                SortExpression="category" />


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

               </p>
			</div>
    </asp:Content>


