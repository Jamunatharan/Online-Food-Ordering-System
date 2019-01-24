using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
   SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_A41AE2_Restaurant"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void DontHaveaccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void Login_Click(object sender, EventArgs e)
    {
      
        conn.Open();
        string registercustomer = "select count(*) from Customer where Email='" + loginemailtxtbox.Text.Trim() + "'";
        SqlCommand comm = new SqlCommand(registercustomer, conn);
        int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select Password from Customer where Email='" + loginemailtxtbox.Text.Trim() + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");            

            if (password == loginpasstxtbox.Text.Trim())
            {
                Session["user"] = loginemailtxtbox.Text.Trim();
                if (Session["checkout"] != null)
                {
                    Response.Redirect("Checkout.aspx");
                }
                else
                {
                    Response.Redirect("Mainmenu.aspx");
                }
               
            }
            else
            {
                //Response.Write("Incorrect password");
                lblpassnotcrt.Text = ("Password is incorrect");
            }

        }
        else
        {
            //Response.Write("Email incorrect");
            lablEmailnotCorrct.Text = ("Email ID is invalid");
        }
        
           
       
    }
}
