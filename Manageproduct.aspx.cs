using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Manageproduct : System.Web.UI.Page
{   
    
    String a, b;
  SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_A41AE2_Restaurant"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ProductAddBtn_Click(object sender, EventArgs e)
    {
        /*a = Class1.GetRandomPassword(10).ToString();
        ImagePath.SaveAs(Request.PhysicalApplicationPath + "./images/" + a + ImagePath.FileName.ToString());
        b= "images /" + a + ImagePath.FileName.ToString();

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = " insert into Product values('"+ProductTypeDropList.Text+ "','"+ProductNameTxtbox.Text+ "',"+ProductPriceTxtbox.Text+ ", '"+ProductDescriptionTxtbox.Text+"','"+b.ToString()+"')";
        cmd.ExecuteNonQuery();
        conn.Close();*/

        try
        {
           
            a = Class1.GetRandomPassword(10).ToString();
            ImagePath.SaveAs(Request.PhysicalApplicationPath + "./images/" + a + ImagePath.FileName.ToString());
            b = "images/" + a + ImagePath.FileName.ToString();
            {
                conn.Open();             
                
                    Guid newGUID = Guid.NewGuid();                
                    string insertQuery = "insert into Product(ProductType,ProductName,ProductPrice,ProductDescription,ProductImage) values(@ProductType, @ProductName, @ProductPrice, @ProductDescription, @ProductImage)"; SqlCommand comm = new SqlCommand(insertQuery, conn);
                    //comm.Parameters.AddWithValue("@ProductGuidID", newGUID.ToString());//
                    comm.Parameters.AddWithValue("@ProductType", ProductTypeDropList.Text);
                    comm.Parameters.AddWithValue("@ProductName", ProductNameTxtbox.Text);
                    comm.Parameters.AddWithValue("@ProductPrice", ProductPriceTxtbox.Text);
                    comm.Parameters.AddWithValue("@ProductDescription", ProductDescriptionTxtbox.Text);
                    comm.Parameters.AddWithValue("@ProductImage", b.ToString());
                    comm.ExecuteNonQuery();
                    //Response.Redirect("RegistrationView.aspx");
                    //Response.Write("Registration is successful");
                   // Response.Redirect("Login.aspx");
                    conn.Close();                
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    protected void productback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminmain.aspx");
    }
}
