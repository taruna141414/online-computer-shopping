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

public partial class ForgetPasswordt : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        con = new SqlConnection(obj.oledb_str);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string sel = "SELECT  password FROM  Register where (username = '" + txtusername.Text + "') AND (ques = '" + txtques.Text + "') AND (answer = '" + txtanswer.Text + "')";
        cmd = new SqlCommand(sel, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Label6.Visible = true;
            txtpassword.Visible = true;
            txtpassword.Text = dr[0].ToString();
        }
        else
        {
            //Response.Write("<script>window.alert('plz enter correct information')</script>");
            Label6.Visible = true;
            Label6.Text = "plz enter correct information";
            txtusername.Text = "";
            txtanswer.Text = "";
           // txtpassword.Text = "Please Enter Correct Information !!!";
        }

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
