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

public partial class AdminAccessories : System.Web.UI.Page
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
        //auto generate product id
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(prdid) FROM accessories ";


        //SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        txtpid.Text = id.ToString();
        dr.Dispose();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        txtpname.Text = "";
        txtprice.Text = "";
        CheckBox1.Text = "";
        txtdesc.Text = "";
        
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {

    }
    protected void btn_update_Click(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        con.Open();
        string filename = "";

        if (FileUpload1.HasFile)
        {
            string fname = FileUpload1.PostedFile.FileName;
            filename = fname.Substring(fname.LastIndexOf("\\") + 1);
        }


        string filenm = "~/accessories/" + FileUpload1.FileName;
        if (CheckBox1.Checked == true)
        {
            CheckBox1.Text = "True";
        }
        else
        {
            CheckBox1.Text = "False";
        }
        string ins = "INSERT INTO accessories( prdid, prdname, price, stock, des, image)VALUES ('" + txtpid.Text + "','" + txtpname.Text + "','" + txtprice.Text + "','" + CheckBox1.Text + "','" + txtdesc.Text + "','" + filenm + "')";
        cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        FileUpload1.SaveAs(MapPath("~/accessories/" + filename));
        Label9.Text = "accessories Inserted Successfully !!";
        
        txtpid.Text = "";
        txtpname.Text = "";
        txtprice.Text = "";
        CheckBox1.Text = "";
        txtdesc.Text = "";
        con.Close();
        
    }
}
