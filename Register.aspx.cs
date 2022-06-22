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

public partial class regi : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select max(id) from Register";
        dr = cmd.ExecuteReader();


        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        txtid.Text = id.ToString();
        dr.Dispose();

        con.Close();
    }
    //protected void btn_cancel_Click(object sender, EventArgs e)
    //{
    //    txtid.Text = "";
    //    txtfname.Text = "";
    //    txtlname.Text = "";

    //    txtbdate.Text = "";
    //    txtaddress.Text = "";
    //    txtcity.Text = "";
    //    txtstate.Text = "";

    //    txtmblno.Text = "";
    //    txtemail.Text = "";
    //    txtusername.Text = "";
    //    txtpassword.Text = "";
    //    txtrepassword.Text = "";
    //    txtcardno.Text = "";
    //    txtbankname.Text = "";
    //    txtanswer.Text = "";

    //}
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtbdate.Text = Calendar1.SelectedDate.ToString();
    }
    //protected void btn_submit_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    string ins = "INSERT INTO Register(id,fname, lnam, gender, dob, address, city, state, country, mobileno, emailid, password, cardno, bankname, ques, answer,username)VALUES('" + txtid.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtgender.Text + "','" + txtbdate.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtcountry.Text + "','" + txtmblno.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + txtcardno.Text + "','" + txtbankname.Text + "','" + txtques.Text + "','" + txtanswer.Text + "','" + txtusername.Text + "')";
    //    cmd = new SqlCommand(ins, con);
    //    cmd.ExecuteNonQuery();
    //    Label22.Text = "Registeration successfully!!";
    //    //Response.Write("<script>window.alert('Registeration successfully!!!')</script>");
    //    txtid.Text = "";
    //    txtfname.Text = "";
    //    txtlname.Text = "";

    //    txtbdate.Text = "";
    //    txtaddress.Text = "";
    //    txtcity.Text = "";
    //    txtstate.Text = "";

    //    txtmblno.Text = "";
    //    txtemail.Text = "";
    //    txtusername.Text = "";
    //    txtpassword.Text = "";
    //    txtrepassword.Text = "";
    //    txtcardno.Text = "";
    //    txtbankname.Text = "";
    //    txtanswer.Text = "";
    //    con.Close();
    //}



    protected void btn_submit_Click1(object sender, EventArgs e)
    {
        con.Open();
        string ins = "INSERT INTO Register(id,fname, lnam, gender, dob, address, city, state, country, mobileno, emailid, password, cardno, bankname, ques, answer,username)VALUES('" + txtid.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtgender.Text + "','" + txtbdate.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtcountry.Text + "','" + txtmblno.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + txtcardno.Text + "','" + txtbankname.Text + "','" + txtques.Text + "','" + txtanswer.Text + "','" + txtusername.Text + "')";
        cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        Label22.Text = "Registeration successfully!!";
        //Response.Write("<script>window.alert('Registeration successfully!!!')</script>");
        txtid.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";

        txtbdate.Text = "";
        txtaddress.Text = "";
        txtcity.Text = "";
        txtstate.Text = "";

        txtmblno.Text = "";
        txtemail.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtrepassword.Text = "";
        txtcardno.Text = "";
        txtbankname.Text = "";
        txtanswer.Text = "";
        con.Close();
    }
    protected void btn_cancel_Click1(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";

        txtbdate.Text = "";
        txtaddress.Text = "";
        txtcity.Text = "";
        txtstate.Text = "";

        txtmblno.Text = "";
        txtemail.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtrepassword.Text = "";
        txtcardno.Text = "";
        txtbankname.Text = "";
        txtanswer.Text = "";
    }
    protected void txtbdate_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        txtbdate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}
