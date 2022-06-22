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

public partial class Addtocartacc : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        if (Session["unm"] != null)
        {
            
            int id = int.Parse(Request.QueryString["id"].ToString());
            
            string sel = "select * from accessories where prdid=" + id;
            da = new SqlDataAdapter(sel, con);
            da.Fill(ds, "accessories");
            dt = ds.Tables[0];
            txtpid.Text = dt.Rows[0][0].ToString();
            txtpname.Text = dt.Rows[0][1].ToString();
            Image2.ImageUrl = dt.Rows[0][5].ToString();
            txtprice.Text = dt.Rows[0][2].ToString();


            con.Close();

        }
        else
        {
            Response.Redirect("Home.aspx");

        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        string unm = Session["unm"].ToString();
        string date = DateTime.Now.ToShortDateString();
        int total = int.Parse(txtqty.Text) * int.Parse(txtprice.Text);
        string ins = "insert into temp values('" + unm + "','" + txtpid.Text + "','" + txtpname.Text + "','" + Image2.ImageUrl + "','" + txtprice.Text + "','" + txtqty.Text + "','" + total + "','"+date+"')";
        cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("ViewCart.aspx");


        con.Close();
    }
    }

