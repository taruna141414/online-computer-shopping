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

public partial class product : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlDataReader dr;
    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        string sel = "select * from company";
        da = new SqlDataAdapter(sel, con);
        da.Fill(ds, "company");
        dt = ds.Tables["company"];
        if (!IsPostBack)
        {
            txtcmpid.DataSource = dt;
            txtcmpid.DataTextField = "id";
            txtcmpid.DataBind();
        }

        //auto generate product id
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(proid) FROM product ";


        //SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        txtprdid.Text = id.ToString();
        dr.Dispose();
        

    } 
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txtcmpname.Text = "";
        txtprdid.Text = "";
        txtprdname.Text = "";
        txtprice.Text = "";
        chkstock.Text = "";
        txtdesc.Text = "";
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        string filename = "";
        
        if (FileUpload1.HasFile)
        {
            string fname = FileUpload1.PostedFile.FileName;
            filename = fname.Substring(fname.LastIndexOf("\\") + 1);
        }


        string filenm = "~/product/" + FileUpload1.FileName;
        if (chkstock.Checked == true)
        {
            chkstock.Text = "True";
        }
        else
        {
            chkstock.Text = "False";
        }
        string ins = "INSERT INTO product(companyid, companyname, proid, proname, price, stock, des, image)VALUES ('" + txtcmpid.Text + "','" + txtcmpname.Text + "','" + txtprdid.Text + "','" + txtprdname.Text + "','" + txtprice.Text + "','" + chkstock.Text + "','" + txtdesc.Text + "','" + filenm + "')";
        cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        FileUpload1.SaveAs(MapPath("~/product/" + filename));
        lblmsg.Text = "Product Inserted Successfully !!";
        txtcmpname.Text = "";
        txtprdid.Text = "";
        txtprdname.Text = "";
        txtprice.Text = "";
        chkstock.Text = "";
        txtdesc.Text = "";
        
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {

    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {

    }
    protected void txtcmpid_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (DataRow dr in dt.Rows)
        {
            if (dr[0].ToString() == txtcmpid.Text)
            {
                txtcmpname.Text = dr[1].ToString();
                break;
            }
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
