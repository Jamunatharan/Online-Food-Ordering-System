using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page


{
  SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_A41AE2_Restaurant"].ConnectionString);

  

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
           
            {
                conn.Open();

                bool exists = false;

                using (SqlCommand cmd = new SqlCommand("select count(*) from [Customer] where Email = @Email", conn))
                {
                    cmd.Parameters.AddWithValue("Email", regemailtxtbox.Text);
                    exists = (int)cmd.ExecuteScalar() > 0;
                }

                if (exists)
                {
                    LablEmaiExist.Text = ("Email address already exists.");
                    ScriptManager.GetCurrent(this.Page).SetFocus(this.regemailtxtbox);
                }
                else
                {
                    Guid newGUID = Guid.NewGuid();
                   
                    //conn.Open();
                    string insertQuery = "insert into Customer(Id,Email,Password,Name,PhoneNumber,Postcode) values(@CustomerID, @Email, @Password, @Name, @PhoneNumber, @Postcode)";
                    SqlCommand comm = new SqlCommand(insertQuery, conn);
                    comm.Parameters.AddWithValue("@CustomerID", newGUID.ToString());
                    comm.Parameters.AddWithValue("@Email", regemailtxtbox.Text);
                    comm.Parameters.AddWithValue("@Password", regpasswdtxtbox.Text);
                    comm.Parameters.AddWithValue("@Name", Nametxtbox.Text);
                    comm.Parameters.AddWithValue("@PhoneNumber", phonenotxtbox.Text);
                    comm.Parameters.AddWithValue("@Postcode", regpostcodtxtbox.Text);
                    comm.ExecuteNonQuery();
                    //Response.Redirect("RegistrationView.aspx");
                    //Response.Write("Registration is successful");
                    Response.Redirect("Login.aspx");
                    conn.Close();
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    protected void AlreadyhaveaccLnkBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

}
