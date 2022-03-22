using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;


public partial class test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int passedId = Convert.ToInt32(Request.QueryString["IdPassed"]);
        SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");
	        conn.Open();
	        string str = "select * from chefs where cid="+passedId+"";
	        SqlCommand cmd = new SqlCommand(str, conn);
	        SqlDataAdapter da = new SqlDataAdapter(cmd);
	        DataTable dt = new DataTable();
	        da.Fill(dt);
	        GridView1.DataSource = dt;
	        GridView1.DataBind();
    }
}