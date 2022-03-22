<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="Disengagedstaff.aspx.cs" Inherits="Disengagedstaff" %>

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
      BorderWidth="1px" DataKeyNames="staf_id" Font-Size="10"
    Font-Names="Arial" Width="100%" CssClass="grid" BorderColor="#ccc" 
                        BorderStyle="None" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />

           
            <Columns>            
                <asp:TemplateField>
                    <ItemTemplate >
                        <asp:DropDownList ID="DropDownList1" runat="server" onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Selected="True">Select Status</asp:ListItem>
                        <asp:ListItem Value="Engaged">Engage</asp:ListItem>
                        <asp:ListItem Value="Disengaged">Disengage</asp:ListItem>

                        </asp:DropDownList>
                        
                    </ItemTemplate>                   
                </asp:TemplateField>
               
                <asp:BoundField DataField="staf_id" HeaderText="STAFF ID" />                   
                <asp:BoundField DataField="name" HeaderText="Staff Name"  />
                <asp:BoundField DataField="category" HeaderText="CategoryName"  />
                <asp:BoundField DataField="clientname" HeaderText="Client Name"  />
                <asp:BoundField DataField="status" HeaderText="STATUS"  />


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






