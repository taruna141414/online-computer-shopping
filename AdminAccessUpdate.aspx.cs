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

public partial class AdminAccessUpdate : System.Web.UI.Page
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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string filename = "";
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

        Label lbl = (Label)row.FindControl("lblid");
        Label lbl1 = (Label)row.FindControl("lblpname");
        
        TextBox txtprice = (TextBox)row.FindControl("txtprice");
        CheckBox chk1 = (CheckBox)row.FindControl("chkstock");
        TextBox txtdesc = (TextBox)row.FindControl("txtdes");

        FileUpload f1 = (FileUpload)row.FindControl("FileUpload1");


        GridView1.EditIndex = -1;
        if (chk1.Checked == true)
        {
            chk1.Text = "True";

        }
        else
        {
            chk1.Text = "False";
        }
        if (f1.HasFile)
        {

            Class1 objcon = new Class1();
            con = new SqlConnection(objcon.oledb_str);
            con.Open();
            string fname = f1.PostedFile.FileName;
            filename = fname.Substring(fname.LastIndexOf("\\") + 1);
            string filenm = "~/accessories/" + f1.FileName;
            string up = "UPDATE    accessories SET price='" + txtprice.Text + "',stock='" + chk1.Text + "',des='" + txtdesc.Text + "',  image ='" + filenm + "' where prdid='" + lbl.Text + "'";
            cmd = new SqlCommand(up, con);
            cmd.ExecuteNonQuery();
            f1.SaveAs(MapPath("~/accessories/" + filename));
            Label3.Text = "Record Updated Successfully";
            con.Close();
            bindGrid();
        }
        else
        {

            Class1 objcon = new Class1();
            con = new SqlConnection(objcon.oledb_str);
            con.Open();
            string update = "UPDATE    accessories SET price ='" + txtprice.Text + "', stock ='" + chk1.Text + "', des ='" + txtdesc.Text + "' where prdid='" + lbl.Text + "'";
            //string up = "UPDATE    product SET price='" + txtprice.Text + "',stock='" + chk1.Text + "',des='" + txtdesc.Text + "' where proid='" + lblpid.Text + "'";
            //string up1 = "UPDATE    product SET price='" + txtprice.Text + "',stock='" + chk1.Text + "',des='" + txtdesc.Text + "' where proid='" + lblpid.Text + "'";
            cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            Label3.Text = "Record Updated Successfully";
            con.Close();
            bindGrid();

        }

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bindGrid();
        

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bindGrid();
    }
}
