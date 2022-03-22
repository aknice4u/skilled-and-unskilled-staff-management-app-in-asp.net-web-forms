using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reg_clients : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList1.Text =="empty")
            {
                Label1.Text = "Please, Select a category";
            }
            else
            {
            ellac enter = new ellac();
            enter.insertclients(TextBox1.Text, TextBox2.Text, TextBox4.Text, DropDownList1.Text);
            Label1.Text = "record enterterd";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        
    }
}