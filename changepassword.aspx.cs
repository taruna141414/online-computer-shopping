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

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
       
        con.Open();
        string sel = "SELECT username, password FROM admin where (username='"+txtusername.Text+"')AND(password='"+txtoldpwd.Text+"')";

        cmd = new SqlCommand(sel,con);
        dr=cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string upd = "UPDATE admin SET UserName ='" + txtusername.Text + "', password ='" + txtnewpwd.Text + "' ";
            cmd = new SqlCommand(upd,con);
            dr.Close();
            cmd.ExecuteNonQuery();
            Label7.Visible = true;
            Label7.Text = "password has been changed successfully";
            txtusername.Text = "";
            txtoldpwd.Text = "";
            txtnewpwd.Text = "";
            txtrepwd.Text = "";
        }
        con.Close();


    }
}

