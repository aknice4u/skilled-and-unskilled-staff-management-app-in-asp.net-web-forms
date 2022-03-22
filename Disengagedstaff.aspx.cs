using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Disengagedstaff : System.Web.UI.Page
{
    SqlConnection constr = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!Page.IsPostBack)
        {
            LoadData();

            //string name = (GridView1.FindControl("DropDownList1") as DropDownList).Text;
            //int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            //Response.Write(name);
        }


    }
    private void LoadData()
    {
        //string query = "SELECT * FROM check";

        SqlDataAdapter da = new SqlDataAdapter("SELECT staffsengagedTB.staf_id,staffsengagedTB.name,staffsengagedTB.status,staffs_category.category,clients.clientname FROM staffs, staffsengagedTB,clients,staffs_category where staffs.staff_id = staffsengagedTB.staf_id and clients.client_id = staffsengagedTB.postedto and staffs.staff_cat = staffs_category.cat_id ", constr);
        DataTable table = new DataTable();
        da.Fill(table);

        GridView1.DataSource = table;
        GridView1.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList chkStatus = (DropDownList)sender;
        GridViewRow row = (GridViewRow)chkStatus.NamingContainer;
        string staffid = row.Cells[1].Text;
        string status = chkStatus.SelectedItem.Value;
        SqlCommand scom = new SqlCommand("update staffsengagedTB set status = '" + status + "' where staf_id = '" + staffid + "'", constr);
        SqlCommand cm = new SqlCommand("update staffs set engagement = '" + status + "' where staff_id = '" + staffid + "'", constr);
        constr.Open();
        scom.ExecuteNonQuery();
        cm.ExecuteNonQuery();
        constr.Close();
        LoadData();


                
    }
}