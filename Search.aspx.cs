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

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 1)
            this.DataList1.DataSourceID = "SqlDataSource2";

        else
            this.DataList1.DataSourceID = "SqlDataSource1";

            this.DataList1.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["unm"] == null)
        {
            Response.Redirect("Login.aspx");

        }
        else
        {
            Response.Redirect("Addtocart.aspx?id=" + ((ImageButton)sender).CommandArgument);

        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Link1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClientProdesc.aspx?id=" + ((LinkButton)sender).CommandArgument);
    }
}
