<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="addstaffcategory.aspx.cs" Inherits="addstaffcategory" %>

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
    <style type="text/css">
        .style1
        {
            width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
	  <div id="view">
          <div class="post">
					<h2>Welcome to Ellac C</h2>
					
				</div>				
				<table class="style1">
                    <tr>
                        <td>
                            STAFF
                            CATEGORY</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="tbox"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
          </table>
			</div>
    </asp:Content>


