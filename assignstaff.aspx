<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="assignstaff.aspx.cs" Inherits="assignstaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 222px;
        }
        .style2
        {
            width: 77px;
        }
        .asign
        {
            padding: 3px;
            border-radius:5px;
            border: 1px solid #ccc;
            width:140px;
        }
        .style1 td
        {
            margin-bottom:6px
        }
        .btn
        {
           padding:5px;
           background-color:#eeeeee;
           border-radius:3px;
           border: 1px solid #999;
           box-shadow: 0px 0px 10px 0px #ccc; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
	  <div id="view">
          <div class="post">
					<h2>Chefs Staff List</h2>
					
				</div>				
				<p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        onrowcommand="GridView1_RowCommand" class="grid" BackColor="White" BorderColor="#ccc" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
<Columns>
<asp:BoundField HeaderText="STAFF ID"
DataField="staff_id" />
<asp:BoundField HeaderText="Full Name"
DataField="Name" />
<asp:BoundField HeaderText="Address"
DataField="address" />
<asp:BoundField HeaderText="Contact Number"
DataField="phone" />

    <asp:CommandField HeaderText="ASIGN" ShowSelectButton="True" />

</Columns>
<FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle Font-Bold="True" CssClass="tabgrid" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E1E1E1" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#e1e1e1" Font-Bold="True" ForeColor="#333" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />

</asp:GridView>

                   
               </p>
			</div>
    </asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <div id="sidebar1">
                <div class="box">
                    <h2>Asign Chefs</h2>

			<table class="style1">
                <tr>
                    <td class="style2">
                        id</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" class="asign"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" class="asign"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Assign To</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="asign" 
                            >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Remarks</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" class="asign"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        engage</td>
                    <td>
                        <asp:CheckBoxList ID="chlist" runat="server">
                            <asp:ListItem>Engaged</asp:ListItem>
                        </asp:CheckBoxList>
                        </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="ASIGN" class="btn" 
                            onclick="Button1_Click" />
                    &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#9933FF"></asp:Label>
                    </td>
                </tr>
            </table>
            </div>
            </div>
        </asp:Content>



