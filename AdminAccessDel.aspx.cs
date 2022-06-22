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
public partial class AdminAccessDel : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
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
        SqlDataAdapter da = new SqlDataAdapter("select * from accessories", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "accessories");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteId = (Label)row.FindControl("prdid");

        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();

        SqlCommand cmd = new SqlCommand("delete from accessories where prdid=" + lbldeleteId.Text + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        bindGrid();
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
