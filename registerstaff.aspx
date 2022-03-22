<%@ Page Title="" Language="C#" MasterPageFile="~/otherpages.master" AutoEventWireup="true" CodeFile="registerstaff.aspx.cs" Inherits="registerstaff" %>

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
					<h2>Register Drivers
                        <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="margin-left:20px;"></asp:Label>
                    </h2>
					<table class="tab">
                        <tr>
                            <td class="auto-style2">SURNAME</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please, Surname is required"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">FIRSTNAME</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">LASTNAME</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="tbox"></asp:TextBox>
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
                            <td class="auto-style2">PHONE</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">MARITAL STATUS</td>
                            <td class="auto-style3">
                                <asp:RadioButtonList ID="rdlist" runat="server">
                                    <asp:ListItem>Maried</asp:ListItem>
                                    <asp:ListItem>Single</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">QULIFICATION</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">EXPERIENCE</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TBengage" runat="server" style="display:none;"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                                                <tr>
                            <td class="auto-style2">STAFF CATEGORY</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tbox">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">TRAINING</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">JOB SPECIFICATION</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="tboxarea" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">HEALTH RECORDS</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox13" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">SALARY</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox14" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">ALLOWANCE</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox15" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">REMARKS</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox16" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">UPLOAD PICTURE</td>
                            <td class="auto-style3">
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tbox" />
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
                    </table>
					<p>Proin in nunc nibh, in suscipit enim. Nunc fermentum metus ut diam faucibus rhoncus. Duis augue sapien, pharetra sit amet mollis at, luctus ut eros.</p>
				</div>
			</div>
    </asp:Content>


