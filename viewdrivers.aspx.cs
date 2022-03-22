using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewdrivers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        /*if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }
         */
    }
    protected void LinkButton_Click(Object sender, CommandEventArgs e)
    {
        if (e.CommandArgument != null)
        {
            Response.Redirect("driverfullprofile.aspx?Idstring=" + e.CommandArgument.ToString());
        }
    }
}