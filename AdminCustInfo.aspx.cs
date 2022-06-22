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

public partial class AdminCustInfo : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;   
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindGrid();
        }
    }

    public void bindGrid()
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Register", con);
         DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        da.Fill(ds, "Register");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteId = (Label)row.FindControl("lblid");
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        string qry = "delete from Register where id=" + lbldeleteId.Text.ToString();
        //Response.Write(qry);
        //SqlCommand cmd = new SqlCommand("delete from Register where id=" +lbldeleteId.Text + " ", con);
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.ExecuteNonQuery();
        con.Close();
        bindGrid();
    }
   
}
