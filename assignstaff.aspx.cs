using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

public partial class assignstaff : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if(!IsPostBack)
        {
            DropDownList1.Items.Add(new ListItem("--Select Client", ""));
            DropDownList1.AppendDataBoundItems = true;

        conn.Open();
        bindgrid();
        conn.Close();
        conn.Open();
        SqlCommand com = new SqlCommand("select * from clients", conn);
        //SqlDataReader dr = com.ExecuteReader();


        DropDownList1.DataSource = com.ExecuteReader();
        DropDownList1.DataTextField = "clientname";
        DropDownList1.DataValueField = "client_id";
        DropDownList1.DataBind();

        conn.Close();

        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Int16 num = Convert.ToInt16(e.CommandArgument);
            TextBox1.Text = GridView1.Rows[num].Cells[0].Text;
            TextBox2.Text = GridView1.Rows[num].Cells[1].Text;
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand scm = new SqlCommand("insert into staffsengagedTB (staf_id,name,postedto,remarks,status) values (@stafid,@name,@posted,@remarks,@status)", conn);
        scm.Parameters.AddWithValue("@stafid", TextBox1.Text);
        scm.Parameters.AddWithValue("@name", TextBox2.Text);
        scm.Parameters.AddWithValue("@posted", DropDownList1.Text);
        scm.Parameters.AddWithValue("@remarks", TextBox4.Text);
        scm.Parameters.AddWithValue("@status", chlist.Text);

        scm.ExecuteNonQuery();
        Label1.Text = "Successfully Posted";
        SqlCommand udatecm = new SqlCommand("update staffs set engagement = @ch where staff_id = '" + TextBox1.Text + "' ", conn);
        udatecm.Parameters.AddWithValue("@ch",chlist.Text);
        udatecm.ExecuteNonQuery();
        bindgrid();
        conn.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.Text = "";
        TextBox4.Text = "";
    }
    public void bindgrid()
    {
        SqlDataAdapter da;
        
        da = new SqlDataAdapter("select staff_id, surname +' '+firstname +' '+ lastname Name,address,phone from staffs where engagement='Disengaged'", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        

    }
}