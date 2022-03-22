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


public partial class disengagedriver : System.Web.UI.Page
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
        }


    }
    private void LoadData()
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }
        //string query = "SELECT * FROM check";

        SqlDataAdapter da = new SqlDataAdapter("SELECT driversengagedTB.did,driversengagedTB.name,drivers2.engagement FROM drivers2, driversengagedTB where drivers2.did = driversengagedTB.did", constr);
        DataTable table = new DataTable();
        da.Fill(table);

        GridView1.DataSource = table;
        GridView1.DataBind();
    }
    public void chkStatus_OnCheckedChanged(object sender, EventArgs e)
    {
        CheckBox chkStatus = (CheckBox)sender;
        GridViewRow row = (GridViewRow)chkStatus.NamingContainer;
        


        string cid = row.Cells[1].Text;
        bool status = chkStatus.Checked;


        //string constr = @"Server=.\SQLEXPRESS;Database=TestDB;uid=waqas;pwd=sql;";
        string query = "UPDATE drivers2 SET engagement = @Approved WHERE did = @CategoryID";

        //SqlConnection con = new SqlConnection(constr);
        SqlCommand com = new SqlCommand(query, constr);


        com.Parameters.Add("@Approved", SqlDbType.Bit).Value = status;
        com.Parameters.Add("@CategoryID", SqlDbType.Int).Value = cid;

        SqlCommand cmd = new SqlCommand("update driversengagedTB set status = @status where did=@CategoryID",constr);
        cmd.Parameters.Add("@status", SqlDbType.Int).Value = status;
        cmd.Parameters.Add("@CategoryID", SqlDbType.Int).Value = cid;
        constr.Open();
        com.ExecuteNonQuery();
        cmd.ExecuteNonQuery();
        constr.Close();

        LoadData();
    }
}