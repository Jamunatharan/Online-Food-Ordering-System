using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Mainmenu : System.Web.UI.Page
{
    string postcode;
   SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_A41AE2_Restaurant"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        StartersBtn.ForeColor = System.Drawing.Color.Black;
        StartersBtn.Enabled = false;
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Product where ProductType='Starters'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Repeaterproductdisplay.DataSource = dt;
        Repeaterproductdisplay.DataBind();
        conn.Close();

        if (DessertsBtn.Enabled == true)
        {
            Session.Remove("desserts");
        }
        if (KidsmealBtn.Enabled == true)
        {
            Session.Remove("kidsmeal");
        }
        /* if (Session["New"] != null)
         {            
             ((Label)Master.FindControl("LblLoginUser")).Text = Session["New"].ToString();
         }
         else
             Response.Redirect("Home.aspx");*/

    }

    protected void StartersBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Product where ProductType='Starters'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Repeaterproductdisplay.DataSource = dt;
        Repeaterproductdisplay.DataBind();
        conn.Close();
        StartersBtn.ForeColor = System.Drawing.Color.Black;
        KidsmealBtn.ForeColor = System.Drawing.Color.Gray;
        DessertsBtn.ForeColor = System.Drawing.Color.Gray;
        MaindishesBtn.ForeColor = System.Drawing.Color.Gray;
        StartersBtn.Enabled = false;
        MaindishesBtn.Enabled = true;
        KidsmealBtn.Enabled = true;
        DessertsBtn.Enabled = true;
    }

    protected void MaindishesBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Product where ProductType='MAIN DISHES'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Repeaterproductdisplay.DataSource = dt;
        Repeaterproductdisplay.DataBind();
        conn.Close();
        StartersBtn.ForeColor = System.Drawing.Color.Gray;
        KidsmealBtn.ForeColor = System.Drawing.Color.Gray;
        DessertsBtn.ForeColor = System.Drawing.Color.Gray;
        MaindishesBtn.ForeColor = System.Drawing.Color.Black;
        StartersBtn.Enabled = true;
        MaindishesBtn.Enabled = false;
        KidsmealBtn.Enabled = true;
        DessertsBtn.Enabled = true;
    }

    protected void KidsmealBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Product where ProductType='KIDS MEALS'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Repeaterproductdisplay.DataSource = dt;
        Repeaterproductdisplay.DataBind();
        conn.Close();

        StartersBtn.ForeColor = System.Drawing.Color.Gray;
        KidsmealBtn.ForeColor = System.Drawing.Color.Black;
        DessertsBtn.ForeColor = System.Drawing.Color.Gray;
        MaindishesBtn.ForeColor = System.Drawing.Color.Gray;

        StartersBtn.Enabled = true;
        MaindishesBtn.Enabled = true;
        KidsmealBtn.Enabled = false;
        DessertsBtn.Enabled = true;

        Session["kidsmeal"] = KidsmealBtn.Enabled = false;
    }

    protected void DessertsBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Product where ProductType='DESSERTS'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Repeaterproductdisplay.DataSource = dt;
        Repeaterproductdisplay.DataBind();
        conn.Close();

        StartersBtn.ForeColor = System.Drawing.Color.Gray;
        KidsmealBtn.ForeColor = System.Drawing.Color.Gray;
        DessertsBtn.ForeColor = System.Drawing.Color.Black;
        MaindishesBtn.ForeColor = System.Drawing.Color.Gray;

        StartersBtn.Enabled = true;
        MaindishesBtn.Enabled = true;
        KidsmealBtn.Enabled = true;
        DessertsBtn.Enabled = false;

        Session["desserts"] = DessertsBtn.Enabled = false;
        
    }

    protected void postcodecheckbtn_Click(object sender, EventArgs e)

    {
        
        if(postcodevalidation.IsValid)
        {
         postcodemsglbl.Text=("We deliver to your area.");            
        }
       else
        {
            postcodemsglbl.Text=("Sorry we dont deliver to your area. ");
        }

        if(postcodechecktxtbox.Text.Trim()==string.Empty)
        {
            postcodemsglbl.Text = ("Please enter your postcode");
        }

    }   

}

