<%@ Page Title="" Language="C#" MasterPageFile="~/viewpages.master" AutoEventWireup="true" CodeFile="fullprofile.aspx.cs" Inherits="fullprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    </asp:Content>



<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
      <div id="view">
          <div class="post">
					<h2>Staff Full Profile</h2>
					
				</div>				
				<p>

                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        DataKeyNames="staff_id" DataSourceID="SqlDataSource1" CssClass="dtview" 
                        AllowPaging="True" BorderColor="#ccc" Width="100%" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        
                        <AlternatingRowStyle BackColor="#F7F7F7" />

                        <Fields>
                            <asp:BoundField DataField="staff_id" HeaderText="staff_id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="staff_id" />
                            <asp:BoundField DataField="surname" HeaderText="surname" 
                                SortExpression="surname" />
                            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                                SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                                SortExpression="lastname" />
                            <asp:BoundField DataField="address" HeaderText="address" 
                                SortExpression="address" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="marital" HeaderText="marital" 
                                SortExpression="marital" />
                            <asp:BoundField DataField="qualification" HeaderText="qualification" 
                                SortExpression="qualification" />
                            <asp:BoundField DataField="experience" HeaderText="experience" 
                                SortExpression="experience" />
                            <asp:BoundField DataField="training" HeaderText="training" 
                                SortExpression="training" />
                            <asp:BoundField DataField="job_specification" HeaderText="job_specification" 
                                SortExpression="job_specification" />
                            <asp:BoundField DataField="healthRecords" HeaderText="healthRecords" 
                                SortExpression="healthRecords" />
                            <asp:BoundField DataField="salary" HeaderText="salary" 
                                SortExpression="salary" />
                            <asp:BoundField DataField="remarks" HeaderText="remarks" 
                                SortExpression="remarks" />
                            <asp:BoundField DataField="imageurl" HeaderText="imageurl" 
                                SortExpression="imageurl" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle Font-Bold="True" CssClass="tabgrid" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E1E1E1" ForeColor="#4A3C8C" />
                        
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ellac_cDBConnectionString %>" 
                        DeleteCommand="DELETE FROM [staffs] WHERE [staff_id] = @staff_id" 
                        InsertCommand="INSERT INTO [staffs] ([surname], [firstname], [lastname], [address], [phone], [marital], [qualification], [experience], [training], [job_specification], [healthRecords], [salary], [remarks], [imageurl]) VALUES (@surname, @firstname, @lastname, @address, @phone, @marital, @qualification, @experience, @training, @job_specification, @healthRecords, @salary, @remarks, @imageurl)" 
                        SelectCommand="SELECT [staff_id], [surname], [firstname], [lastname], [address], [phone], [marital], [qualification], [experience], [training], [job_specification], [healthRecords], [salary], [remarks], [imageurl] FROM [staffs] WHERE ([staff_id] = @staff_id)" 
                        
                        
                        
                        UpdateCommand="UPDATE [staffs] SET [surname] = @surname, [firstname] = @firstname, [lastname] = @lastname, [address] = @address, [phone] = @phone, [marital] = @marital, [qualification] = @qualification, [experience] = @experience, [training] = @training, [job_specification] = @job_specification, [healthRecords] = @healthRecords, [salary] = @salary, [remarks] = @remarks, [imageurl] = @imageurl WHERE [staff_id] = @staff_id">
                        <DeleteParameters>
                            <asp:Parameter Name="staff_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="surname" Type="String" />
                            <asp:Parameter Name="firstname" Type="String" />
                            <asp:Parameter Name="lastname" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                            <asp:Parameter Name="marital" Type="String" />
                            <asp:Parameter Name="qualification" Type="String" />
                            <asp:Parameter Name="experience" Type="String" />
                            <asp:Parameter Name="training" Type="String" />
                            <asp:Parameter Name="job_specification" Type="String" />
                            <asp:Parameter Name="healthRecords" Type="String" />
                            <asp:Parameter Name="salary" Type="String" />
                            <asp:Parameter Name="remarks" Type="String" />
                            <asp:Parameter Name="imageurl" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter Name="staff_id" QueryStringField="stringpassed" 
                                Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="surname" Type="String" />
                            <asp:Parameter Name="firstname" Type="String" />
                            <asp:Parameter Name="lastname" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                            <asp:Parameter Name="marital" Type="String" />
                            <asp:Parameter Name="qualification" Type="String" />
                            <asp:Parameter Name="experience" Type="String" />
                            <asp:Parameter Name="training" Type="String" />
                            <asp:Parameter Name="job_specification" Type="String" />
                            <asp:Parameter Name="healthRecords" Type="String" />
                            <asp:Parameter Name="salary" Type="String" />
                            <asp:Parameter Name="remarks" Type="String" />
                            <asp:Parameter Name="imageurl" Type="String" />
                            <asp:Parameter Name="staff_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

               </p>
			</div>
    </asp:Content>










