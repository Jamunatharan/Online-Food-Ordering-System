using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class DisplayorderAdmin : System.Web.UI.Page
{
    // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RestaurantConnectionString"].ConnectionString);
    SqlConnection conn = new SqlConnection(@"Data Source=restaurantkaran.database.windows.net;Initial Catalog=Restaurant;User ID=restaurantkaran;Password=musebh9H;");

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Orders order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        displayadmin.DataSource= dt;
        displayadmin.DataBind();
        cmd.ExecuteNonQuery(); 
        conn.Close();

    }

    protected void productback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminmain.aspx");
    }
}