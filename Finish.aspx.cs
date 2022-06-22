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

public partial class Finish : System.Web.UI.Page
{
    String unm;
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataAdapter da1 = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["unm"] != null)
        {
            unm = Session["unm"].ToString();

            Class1 objcon = new Class1();
            con = new SqlConnection(objcon.oledb_str);
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from register where username='" + unm + "'";
            da.SelectCommand = cmd;
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();



           
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from temp where uid='" + unm + "'";
            da1.SelectCommand = cmd;
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            GridView2.DataSource = dt1;
            GridView2.DataBind();
            con.Close();
        }
        else
        {
            Response.Redirect("Home.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "InsertTempIntoAddcart";
        cmd.Parameters.AddWithValue("@unm", unm);
        cmd.ExecuteNonQuery();
        Session.Remove("unm");
        Response.Redirect("Thanks.aspx");
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
