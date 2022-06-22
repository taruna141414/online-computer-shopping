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

public partial class Completeshopping : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlDataReader dr;
    string unm;
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txtemail.Text = "";
        txtcard.Text = "";
        txtbank.Text = "";
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (Session["unm"] != null)
        {
            unm = Session["unm"].ToString();
            
            con.Open();
            string sel = "SELECT     emailid, cardno, bankname FROM   register WHERE  (emailid = '" + txtemail.Text + "')AND (cardno = '" + txtcard.Text + "') AND (bankname = '" + txtbank.Text + "') AND   (username = '" + unm + "')";
            cmd = new SqlCommand(sel, con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Response.Redirect("Finish.aspx");
                con.Close();
            }
            else
            {
                lblmsg.Text = "Incorrect Information";
                txtbank.Text = "";
                txtcard.Text = "";
                txtemail.Text = "";
            }



        }
        else
        {

            Response.Redirect("Home.aspx");

        }
        
    }
}
