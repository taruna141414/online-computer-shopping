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


public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       Class1 objcon = new Class1();
       con = new SqlConnection(objcon.oledb_str);
       con.Open();

       string sel = "SELECT   Username, Password FROM  admin WHERE(Username =@username) AND (Password =@password )";
        cmd = new SqlCommand(sel, con);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            if (txtusername.Text.Trim() != "" && txtpassword.Text.Trim() != "")
            {

                Response.Write("<script>window.alert('Welcome Admin !!')</script>");
                Response.Redirect("Adminhome.aspx");


            }
            
            else
            {
                Response.Write("<script>window.alert('Invalid Username Or Password')</script>");
                txtusername.Text = "";
                txtpassword.Text = "";
                txtusername.Focus();
            }
            
            
        }
        
        else if (txtusername.Text.Trim() != "" && txtpassword.Text.Trim() != "")
        {
            dr.Dispose();

            //string sel1 = "SELECT username, password FROM Register WHERE (username = @username) AND (password =@password)";
            string sel1 = "select username, password FROM Register WHERE username='" + txtusername.Text + "'AND password='" + txtpassword.Text + "' ";
            cmd = new SqlCommand(sel1, con);

            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                Session["unm"] = txtusername.Text;

                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>window.alert('Invalid Username Or Password')</script>");
                txtusername.Text = "";
                txtpassword.Text = "";
                txtusername.Focus();
            }

        }
        else
        {
            Response.Write("<script>window.alert('Invalid Username Or Password')</script>");
            txtusername.Text = "";
            txtpassword.Text = "";
            txtusername.Focus();
        }
        con.Close();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}
