using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Checkout : System.Web.UI.Page
{

    //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RestaurantConnectionString"].ConnectionString);
    SqlConnection conn = new SqlConnection(@"Data Source=restaurantkaran.database.windows.net;Initial Catalog=Restaurant;User ID=restaurantkaran;Password=musebh9H;");

    protected void Page_Load(object sender, EventArgs e)
    {
        
        Delivemailtxtbox.Text = Session["user"].ToString();
        //addresscontbtn.Enabled = false;
        deliverydetailDiv.Visible = false;
        Delivmobiletxtbox.Enabled = false;
        deliverypostcodetxtbox.Enabled = false;
        if (IsPostBack)
        {
            return;
        }

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * from Customer where Email='" + Session["user"].ToString() + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            Delivnametxtbox.Text = dr["Name"].ToString();
            Delivmobiletxtbox.Text = dr["PhoneNumber"].ToString();
            deliverypostcodetxtbox.Text = dr["Postcode"].ToString();
            deliveryaddresstxtbox.Text = dr["FirstlineAddress"].ToString();
            deliveryaddresscity.Text = dr["City"].ToString();
        }
        conn.Close();
    }

    protected void TakeawayCheckbox_CheckedChanged(object sender, EventArgs e)
    {
        if (TakeawayCheckbox.Checked)
        {
            deliverydetailDiv.Visible = false;            
            Session["takeaway"] = "Takeaway";
            Session.Remove("delivery");
        }
    }

    protected void DeliveryCheckbox_CheckedChanged1(object sender, EventArgs e)
    {
        if (DeliveryCheckbox.Checked)
        {
            deliverydetailDiv.Visible = true;
            addresscontbtn.Enabled = true;
            Session["delivery"] = "Delivery";
            Session.Remove("takeaway");
        }
    }

    protected void addresscontbtn_Click(object sender, EventArgs e)
    {
        Session["mobile"] = Delivmobiletxtbox.Text;
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update Customer set PhoneNumber='"+ Delivmobiletxtbox.Text + "',Postcode='"+ deliverypostcodetxtbox.Text + "',FirstlineAddress='" + deliveryaddresstxtbox .Text + "',City='"+ deliveryaddresscity .Text + "'  where Email='" + Session["user"].ToString() + "'";
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("Payment.aspx");
        //Response.Redirect("Paypalpayment.aspx");
       //Response.Redirect("Confirmation.aspx");
        

    }


    protected void editmobilenobtn_Click(object sender, EventArgs e)
    {
        Delivmobiletxtbox.Enabled = true;
        //Delivmobiletxtbox.BorderWidth=1;
        deliverydetailDiv.Visible = true;
    }
    protected void editpostcodebtn_Click(object sender, EventArgs e)
    {       
        deliverypostcodetxtbox.Enabled = true;
        deliverydetailDiv.Visible = true;
    }
}