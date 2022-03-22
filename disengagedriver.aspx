<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="disengagedriver.aspx.cs" Inherits="disengagedriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
	  <div id="view">
          <div class="post">
					<h2>DISENGAGE OR RE-ENGAGE STAFF</h2>
					
				</div>				
				<p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
    BackColor="White" BorderColor="#336699" BorderStyle="Solid" BorderWidth="1px"  
    CellPadding="0" CellSpacing="0" DataKeyNames="did" Font-Size="10"
    Font-Names="Arial" GridLines="Vertical" Width="70%" CssClass="grid" >
    <AlternatingRowStyle BackColor="#F7F7F7"/>
           
            <Columns>            
                <asp:TemplateField>
                    <ItemTemplate>
        <asp:CheckBox ID="chkStatus" runat="server" AutoPostBack="true" OnCheckedChanged="chkStatus_OnCheckedChanged"
         Checked='<%# Convert.ToBoolean(Eval("engagement")) %>'
          Text='<%# Eval("engagement").ToString().Equals("True") ? " Engaged " : " Not Engaged " %>' />
            </ItemTemplate>                   
                </asp:TemplateField>
               
                <asp:BoundField DataField="did" HeaderText="CategoryID" />                   
                <asp:BoundField DataField="name" HeaderText="CategoryName"  />
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


<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
			<!-- Sidebar -->
			<div id="sidebar1">
                <div class="box">
                    <h2>
                        Quick Links</h2>
                    <ul>
                    <li><a title="Aenean" href="viewdrivers.aspx">Register Driver</a></li>

                        <li><a title="Aenean" href="viewdrivers.aspx">View Drivers</a></li>
                        <li><a title="Suspendisse" href="asigndrivers.aspx">Asign Drivers</a></li>
                        <li><a title="Pellentesque" href="viewPostedDrivers.aspx">View Posted Drivers</a></li>
                        <li><a title="Pellentesque" href="disengagedriver.aspx">Dis-Engage Drivers</a></li>
                        <li><a title="Mauris" href="#">Logout</a></li>
                        </ul>
                </div>
    </div>
</asp:Content>



