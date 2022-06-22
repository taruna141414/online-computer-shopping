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
public partial class AdminProductDesc : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
   //SqlDataReader dr;
     
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        string sel = "select * from product";
        da = new SqlDataAdapter(sel, con);
        da.Fill(ds, "product");
        dt = ds.Tables["product"];
        if (!IsPostBack)
        {
            txtprdid.DataSource = dt;
            txtprdid.DataTextField = "proid";
            txtprdid.DataBind();
        }

        //auto generate product id
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(proid) FROM product ";
        con.Close();
        

    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txtheight.Text = "";
        txtwidth.Text = "";
        txtcolor.Text = "";
        

    }
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    foreach (DataRow dr in dt.Rows)
    //    {
    //        if (dr[0].ToString() == txtprdid.Text)
    //        {
    //            txtmodelno.Text = dr[1].ToString();
    //            break;
    //        }
    //    }
    //    cn.Close();
    //}
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}
    protected void txtprdid_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (DataRow dr in dt.Rows)
        {
            if (dr[2].ToString() == txtprdid.Text)
            {
                txtprdname.Text = dr[3].ToString();
                
                break;
            }
        }
        
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        con.Open();
        string ins = "INSERT INTO productdescription (proid,proname,height, width, color, bluetooth, datacable, camera, gprs, charger)VALUES  ('" + txtprdid.Text + "','" + txtprdname.Text + "','" + txtheight.Text + "','" + txtwidth.Text + "','" + txtcolor.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "')";
        cmd = new SqlCommand(ins,con);
        cmd.ExecuteNonQuery();
        lblmsg.Text = "added successfully...";
        con.Close();
    }
}
