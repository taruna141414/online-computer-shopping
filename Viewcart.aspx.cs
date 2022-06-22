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
using System.Data.SqlClient;
using System.Data.OleDb;

public partial class Viewcart : System.Web.UI.Page
{

    SqlConnection con; 
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    string unm;
    protected void Page_Load(object sender, EventArgs e)
    {
         if(Session["unm"]!=null)
        {
         unm =Session["unm"].ToString();

         Class1 objcon = new Class1();
         con = new SqlConnection(objcon.oledb_str);
         con.Open();
        string sel = "select * from temp where uid='"+unm+"'";
        da = new SqlDataAdapter(sel,con);
        da.Fill(dt);
        
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
        }
    

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClientCompany.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Completeshopping.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteId = (Label)row.FindControl("lblpname");

        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();

        SqlCommand cmd = new SqlCommand("delete from temp where proname='" + lbldeleteId.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Viewcart.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType != DataControlRowType.DataRow)
            return;

        foreach (DataControlFieldCell dcf in e.Row.Cells)
        {

            if (dcf.Text == "")
            {
                foreach (Control ctrl in dcf.Controls)
                {
                    LinkButton delbutton = ctrl as LinkButton;
                    if (delbutton != null && delbutton.Text == "Delete")
                    {
                        delbutton.Attributes.Add("onClick", "return confirm('Are You Sure to Delete This Record?');");
                        break;
                    }
                }
                break;
            }


        }
    }
}
