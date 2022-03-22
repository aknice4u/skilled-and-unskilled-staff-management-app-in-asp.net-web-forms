<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="viewstaffs.aspx.cs" Inherits="viewsalesgirls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.post span
{
    margin-left:100px;
    margin-right:10px;
    float:right;
    width:80px;
}
.post h1
{
    font-size:15px;
    width:345px;
    float:left;
}
.post p
 {
     width:250px;
     float:right;
 }                   
                    
    .style1
    {
        width: 400px;
        float:right;
       
    }
      .ddown 
      {
          padding:3px;
          margin-top:5px;
          margin-bottom:5px;
          width:100px;
      }  
      .post h2
      {
          
      }            
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
      <div id="view">
          <div class="post">
					<h2>Welcome to Ellac C 
                                             
                         <table class="style1">
                             <tr>
                                 <td>
                                 Select Staff Type
                                  </td>
                                 <td>
                                     <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddown" 
                                         AutoPostBack="True" 
                                         onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                         </table>
                     </h2>
					
				</div>				
				<p>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#000CCC" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" 
                        class="grid" DataKeyNames="staff_id">
                        <AlternatingRowStyle BackColor="#F7F7F7" />

                        <Columns>
                            <asp:BoundField DataField="staff_id" HeaderText="staff_id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="staff_id" />
                            <asp:BoundField DataField="surname" HeaderText="surname" 
                                SortExpression="surname" />
                            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                                SortExpression="lastname" />
                            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                                SortExpression="firstname" />
                            <asp:BoundField DataField="address" HeaderText="address" 
                                SortExpression="address" />
                            <asp:BoundField DataField="experience" HeaderText="experience" 
                                SortExpression="experience" />
                            <asp:BoundField DataField="category" HeaderText="category" 
                                SortExpression="category" />
                            <asp:ImageField HeaderText="Image" DataImageUrlField="imageurl" ControlStyle-Height="50px" ControlStyle-Width="70px" />
                                <asp:TemplateField ControlStyle-Width="70">
	                        <ItemTemplate>
	                        <asp:LinkButton ID="Linkdrivers1" runat="server" CommandArgument='<%# Eval("staff_id") %>' OnCommand="LinkButton_Click" Text="Full Profile" CssClass="linkbtn"> </asp:LinkButton> 
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
                        
                        
                        SelectCommand="SELECT [staff_id], [surname], [lastname], [firstname], [address], [experience], [category],[imageurl] FROM [staffs],[staffs_category] where staffs.staff_cat=staffs_category.cat_id and staffs.staff_cat = @ddlist and staffs.engagement='Disengaged'">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="ddlist" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>

               </p>
			</div>
    </asp:Content>






