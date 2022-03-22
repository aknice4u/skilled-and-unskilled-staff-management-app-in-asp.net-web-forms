<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="clientRequest.aspx.cs" Inherits="clientRequest" %>

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
        .chek label
        {
            margin-left:6px;
            margin-right:6px;
                    }
        
       /* 
        .check li
        {
            width:300px;
            float:left;
            list-style:none;
            padding-right:10px;
        }
        ul
        {
            float:left;
            list-style:none;
        }
        */
    .style1
    {
        width: 402px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
	  <div id="view">
          <div class="post">
					<h2>Welcome to Ellac C</h2>
					
				</div>				
				
                	<table class="tab">
                        <tr>
                            <td class="auto-style2">CLIENT NAME</td>
                            <td class="style1">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please, Surname is required"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">PHONE</td>
                            <td class="style1">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="tbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Select Category</td>
                            <td class="style1">
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="chek" 
                                    Width="380px" RepeatDirection="Horizontal" 
                                    RepeatColumns="3">
                                    </asp:CheckBoxList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Description</td>
                            <td class="style1">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="tboxarea" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="style1">
                                <asp:Button ID="Button1" runat="server" Text="REGISTER" OnClick="Button1_Click" CssClass=" linkbtn" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
               
			</div>
      
    </asp:Content>


