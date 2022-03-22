using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class registerstaff : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn.Open();
            DropDownList1.Items.Add(new ListItem("--Select Ctegory", ""));
            DropDownList1.AppendDataBoundItems = true;
            SqlCommand com = new SqlCommand("select * from staffs_category", conn);
            //SqlDataReader dr = com.ExecuteReader();


            DropDownList1.DataSource = com.ExecuteReader();
            DropDownList1.DataTextField = "category";
            DropDownList1.DataValueField = "cat_id";
            DropDownList1.DataBind();

            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Get Filename from fileupload control
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //Save images into Images folder
            FileUpload1.SaveAs(Server.MapPath("~/staffpassports/" + filename));

            ellac staffinsert = new ellac();
            staffinsert.regstaff(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, Convert.ToInt32(TextBox5.Text), rdlist.Text, TextBox7.Text, TextBox8.Text, DropDownList1.Text, TextBox11.Text, TextBox12.Text, TextBox13.Text, TextBox14.Text, TextBox15.Text, TextBox16.Text, "staffpassports/" + filename);
            Label1.Text = "record enterterd";
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}