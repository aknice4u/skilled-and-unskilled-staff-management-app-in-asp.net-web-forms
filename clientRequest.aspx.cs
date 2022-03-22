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


public partial class clientRequest : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }

        SqlCommand cmd = new SqlCommand("select * from staffs_category",conn);
        conn.Open();
        using (SqlDataReader dr = cmd.ExecuteReader())
        {
            while (dr.Read())
            {
                ListItem item = new ListItem();
                item.Text = dr["category"].ToString();
                item.Value = dr["cat_id"].ToString();
                CheckBoxList1.Items.Add(item);
            }
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "";
        for (int i = 0; i <= CheckBoxList1.Items.Count - 1; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                if (str == "")
                {
                    str = CheckBoxList1.Items[i].Text;
                }
                else
                {
                    str += "," + CheckBoxList1.Items[i].Text;
                }
            }
            
        }
        conn.Open();

        SqlCommand cmd1 = new SqlCommand("insert into clientRequest values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + str + "')", conn);
        cmd1.ExecuteNonQuery();
        Response.Write("success");
        //clear();

        conn.Close();
    }
    void clear()
    {
        CheckBoxList1.SelectedIndex = -1;
    
    }
}