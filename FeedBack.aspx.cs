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
using System.Data.OleDb;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class FeedBack : System.Web.UI.Page
{
    SqlConnection con;
    
    
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (TextBox3.Text == "" && TextBox4.Text == "")
        {
            Label5.Text = "Please Enter Name & feedback";
        }
        else
        {
            if (TextBox3.Text == "")
            {
                Label5.Text = "Please Enter Name";
            }
            else if (TextBox4.Text == "")
            {
                Label5.Text = "Please Enter Feedback";
            }
            else
            {

                Class1 obj = new Class1();
                con = new SqlConnection(obj.oledb_str);
               
                con.Open();
                string ins = "INSERT INTO feedback(Name,Feedback)Values('" + TextBox3.Text + "','" + TextBox4.Text + "')";
                cmd = new SqlCommand(ins, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("thankfeedback.aspx");
                TextBox3.Text = "";
                TextBox4.Text = "";
                con.Close();
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedbackview.aspx");
    }
}


