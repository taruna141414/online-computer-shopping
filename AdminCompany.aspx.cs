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

public partial class Company : System.Web.UI.Page
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
        cmd.CommandText = "SELECT max(id)  FROM company ";


        
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
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        string filename = "";
        if (FileUpload1.HasFile)
        {
            string fname = FileUpload1.PostedFile.FileName;
            filename = fname.Substring(fname.LastIndexOf("\\") + 1);
        }

        string filenm = "~/IMG/" + FileUpload1.FileName;

        string ins = "INSERT INTO company(id,companyname,image)VALUES('" + txtid.Text + "','" + txtname.Text + "','" + filenm + "')";
        cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        FileUpload1.SaveAs(MapPath("~/IMG/" + filename));
        lblmsg.Text = "Company  Inserted Successfully !!";
        txtid.Text = "";
        txtname.Text = "";
        

        con.Close();
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {

    }


    protected void btn_delete_Click1(object sender, EventArgs e)
    {
        Class1 objcon = new Class1();
        con = new SqlConnection(objcon.oledb_str);
        con.Open();
        cmd = new SqlCommand("delete from company where id="+txtid.Text,con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>window.alert('Company Deleted......')</script>");
    }
}
