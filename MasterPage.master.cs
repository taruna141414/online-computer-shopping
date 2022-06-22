using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["unm"] != null)
        {

            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
        }
        else
        {
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
        
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Remove("unm");
        Response.Redirect("Home.aspx");
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?id=" + this.TextBox1.Text + "&id1=" + this.TextBox2.Text);
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {

        Response.Redirect("logout.aspx");
    }
}
