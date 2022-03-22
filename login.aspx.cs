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

public partial class login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from admin where username = '"+TextBox1.Text+"' and passwword = '"+TextBox2.Text+"'",conn);
        SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                if (dr.HasRows == true)
                {
                    Session["admin"] = dr["username"];
                    Response.Redirect("admin.aspx");
                }
            }
            if (dr.HasRows == false)
            {
                Label1.Text = "Username or Password is incorrect, Please, try again";
            }
            conn.Close();
    }
}