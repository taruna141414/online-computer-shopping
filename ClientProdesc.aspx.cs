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

public partial class ClientProdesc : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());

            Class1 objcon = new Class1();
            con = new SqlConnection(objcon.oledb_str);
            con.Open();
            string sel = "SELECT   proid, proname, height, width, color, bluetooth, datacable, camera, gprs, charger FROM   productdescription WHERE   proid =" + id;
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            da.Fill(ds, "productdescription");
            dt = ds.Tables[0];
            
            lblpid.Text = dt.Rows[0][0].ToString();
            lblpname.Text = dt.Rows[0][1].ToString();
            lblheight.Text = dt.Rows[0][2].ToString();
            lblwidth.Text = dt.Rows[0][3].ToString();
            lblcolor.Text = dt.Rows[0][4].ToString();
            lblbluetooth.Text = dt.Rows[0][5].ToString();
            lbldatacable.Text = dt.Rows[0][6].ToString();
            lblcamera.Text = dt.Rows[0][7].ToString();
            lblgprs.Text = dt.Rows[0][8].ToString();
            lblcharger.Text = dt.Rows[0][9].ToString();
            con.Close();
        }
        
    }
}
