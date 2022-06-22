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

public partial class AdminCompanyUpdate : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds=new DataSet();
    DataTable dt=new DataTable();
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
        SqlDataAdapter da=new SqlDataAdapter("select * from company",con);
        DataSet ds= new DataSet();
        da.Fill(ds,"company");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
        
    }

    
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bindGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string filename = "";        
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbl = (Label)row.FindControl("lblid");
        Label lbl1 = (Label)row.FindControl("lblname");
        FileUpload f1 = (FileUpload)row.FindControl("FileUpload1");
        GridView1.EditIndex = -1;
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        string fname = f1.PostedFile.FileName;
        filename=fname.Substring(fname.LastIndexOf("\\")+1);
        string filenm = "~/PRODUCT/" + f1.FileName;
        string up = "UPDATE  company SET  image ='"+filenm+"' where id='"+lbl.Text+"'";
        cmd = new SqlCommand(up,con);
        cmd.ExecuteNonQuery();


        f1.SaveAs(MapPath("~/PRODUCT/" + filename));
        lblmsg.Text = "Record Update Successfully...";
        con.Close();
        bindGrid();


    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bindGrid();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
