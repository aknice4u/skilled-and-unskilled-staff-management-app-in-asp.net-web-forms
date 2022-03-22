using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewclients : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton_Click(Object sender, CommandEventArgs e)
    {
        if (e.CommandArgument != null)
        {
            Response.Redirect("staffposted.aspx?stringpassed=" + e.CommandArgument.ToString());
        }
    }
}