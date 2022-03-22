using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class staffposted : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }

            int id = Convert.ToInt32(Request.QueryString["stringpassed"]);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("select staffsengagedTB.name,staffsengagedTB.remarks,clients.clientname,staffs_category.category from staffsengagedTB,clients,staffs_category,staffs where postedto = '" + id.ToString() + "' and clients.client_id =staffsengagedTB.postedto and status='true' and staffs.staff_cat = staffs_category.cat_id ", conn);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
       
         
    }
}