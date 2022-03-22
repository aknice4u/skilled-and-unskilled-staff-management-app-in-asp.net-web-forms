<%@ Page Title="" Language="C#" MasterPageFile="~/otherpages.master" AutoEventWireup="true" CodeFile="reg_clients.aspx.cs" Inherits="reg_clients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .table
        {
            width: 628px;
        }
        .auto-style2
        {
            width: 146px;
        }
        .tab td
        {
            padding:5px;
            margin:5px;
        }
        .tbox
        {
            padding:5px;
            width:286px;
            border-radius:5px;
            border:1px solid #ccc;
        }
        .tboxarea
        {
            padding:3px;
            width:230px;
            border-radius:5px;
            border:1px solid #ccc;
            height:80px;
        }
        .auto-style3
        {
            width: 200px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
	  <div id="content">				
				<div class="post">
					<h2>REGISTER CLIENTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </h2>
					<p><table class="tab">
                        <tr>
                            <td class="auto-style2">NAME</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please, Surname is required"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">PHONE</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style2">ADDRESS</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="tboxarea" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">REQUEST TYPE</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tbox">
                                    <asp:ListItem>DRIVERS</asp:ListItem>
                                    <asp:ListItem>CHEFS</asp:ListItem>
                                    <asp:ListItem>NANNIES</asp:ListItem>
                                    <asp:ListItem>SALES GIRLS</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="empty">SELECT ONE</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">
                                <asp:Button ID="Button1" runat="server" Text="REGISTER" OnClick="Button1_Click" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table></p>
				</div>
			</div>
    </asp:Content>


