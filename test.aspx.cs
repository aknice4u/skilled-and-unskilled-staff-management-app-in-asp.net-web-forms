using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }

        SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");

	        //SqlConnection conn = new SqlConnection(con);
	        conn.Open();
        string str = "select cid from chefs";
	        SqlCommand cmd = new SqlCommand(str, conn);
	        SqlDataAdapter da = new SqlDataAdapter(cmd);
	        DataTable dt = new DataTable();
	        da.Fill(dt);
	        GridView1.DataSource = dt;
	        GridView1.DataBind();
    }
    protected void LinkButton_Click(Object sender, CommandEventArgs e)
	    {
	        if (e.CommandArgument != null)
	        {
	            Response.Redirect("test2.aspx?IdPassed=" + e.CommandArgument.ToString());
	        }
	    } 

}