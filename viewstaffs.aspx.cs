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


public partial class viewsalesgirls : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            DropDownList1.Items.Add(new ListItem("--Select Client", ""));
            DropDownList1.AppendDataBoundItems = true;

            SqlCommand cmd = new SqlCommand("SELECT * FROM staffs_category", conn);
            conn.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                while (dr.Read())
                {
                    ListItem item = new ListItem();
                    item.Text = dr["category"].ToString();
                    item.Value = dr["cat_id"].ToString();
                    DropDownList1.Items.Add(item);
                }
            }
            conn.Close();
        }
    }

 
    protected void LinkButton_Click(Object sender, CommandEventArgs e)
    {
        if (e.CommandArgument != null)
        {
            Response.Redirect("fullprofile.aspx?stringpassed=" + e.CommandArgument.ToString());
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}