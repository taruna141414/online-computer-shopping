using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class ClientAccessories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["unm"] == null)
        {
            Response.Redirect("Login.aspx");

        }
        else
        {
            Response.Redirect("Addtocartacc.aspx?id=" + ((ImageButton)sender).CommandArgument);

        }
    }
}
