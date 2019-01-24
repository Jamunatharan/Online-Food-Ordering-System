using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddProductToCart : System.Web.UI.Page
{

   SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_A41AE2_Restaurant"].ConnectionString);
    int id;
    private static int i = 1;
    string ProductName, ProductPrice, ProductDescription, ProductImage, ProductQty;
    string productquantity, productspice, productnote;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["desserts"] != null)
        {
            spicecustomisation.Visible = false;
        }
        else if (Session["kidsmeal"] != null)
        {
            spicecustomisation.Visible = false;
        }
        else 
        {
            spicecustomisation.Visible = true;
        }

        ProductSpice.Visible = false;

        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("Mainmenu.aspx");
        }
        else
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Product where ProductID=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeaterproductdisplay.DataSource = dt;
            Repeaterproductdisplay.DataBind();
            conn.Close();

        }

    }

    protected void addtobagbtn_Click(object sender, EventArgs e)
    {
       
        conn.Open();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "update Product set ProductQuantity='" + ProductQuantity.Text + "',ProductSpice='" + ProductSpice.Text + "',ProductNote='" + ProductNote.Text + "' where ProductID=" + id + "";
        cmd1.ExecuteNonQuery();
        conn.Close();

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Product where ProductID=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Repeaterproductdisplay.DataSource = dt;
        Repeaterproductdisplay.DataBind();

        foreach (DataRow dr in dt.Rows)
        {
            ProductName = dr["ProductName"].ToString();
            ProductPrice = dr["ProductPrice"].ToString();
            ProductDescription = dr["ProductDescription"].ToString();
            ProductImage = dr["ProductImage"].ToString();
            productquantity = dr["ProductQuantity"].ToString();
            productspice = dr["ProductSpice"].ToString();
            productnote = dr["ProductNote"].ToString();

            

        }
        conn.Close();

        

        if (Request.Cookies["shopping"] == null)
        {
            Response.Cookies["shopping"].Value = ProductName.ToString() + "," + ProductPrice.ToString() + "," + ProductDescription.ToString() + "," + ProductImage.ToString()+","+ productquantity.ToString()+","+ productspice.ToString()+","+ productnote.ToString();
            Response.Cookies["shopping"].Expires = DateTime.Now.AddDays(1);

        }
        else
        {
            Response.Cookies["shopping"].Value = Request.Cookies["shopping"].Value + "|" + ProductName.ToString() + "," + ProductPrice.ToString() + "," + ProductDescription.ToString() + "," + ProductImage.ToString() + "," + productquantity.ToString() + "," + productspice.ToString() + "," + productnote.ToString();
            Response.Cookies["shopping"].Expires = DateTime.Now.AddDays(1);

        }

        Response.Redirect("Mainmenu.aspx");
    }

    protected void extrahot_Click(object sender, EventArgs e)
    {
        ProductSpice.Visible = true;
        ProductSpice.Text = ("Extra Hot");
        spiceimage.ImageUrl = ("http://localhost:59221/images/chilli5.png");
    }

    protected void hot_Click(object sender, EventArgs e)
    {
        ProductSpice.Visible = true;
        ProductSpice.Text = ("Hot");
        spiceimage.ImageUrl = ("http://localhost:59221/images/chilli4.png");
    }

    protected void quantityincreasebtn_Click(object sender, EventArgs e)
    {

        i++;
       

        ProductQuantity.Text = i.ToString();
        if (i >= 1)
        {
            quantitydecreasebtn.Enabled = true;
        }
    }

    protected void quantitydecreasebtn_Click(object sender, EventArgs e)
    {
        i--;

        ProductQuantity.Text = i.ToString();


        if (i <= 1)
        {
            quantitydecreasebtn.Enabled = false;
        }

    }


    protected void medium_Click(object sender, EventArgs e)
    {
        ProductSpice.Visible = true;
        ProductSpice.Text = ("Medium");
        spiceimage.ImageUrl = ("http://localhost:59221/images/chilli3.png");
    }


    protected void verymild_Click(object sender, EventArgs e)
    {
        ProductSpice.Visible = true;
        ProductSpice.Text = ("Very Mild");
        spiceimage.ImageUrl = ("http://localhost:59221/images/chilli1.png");
    }

    protected void mild_Click(object sender, EventArgs e)
    {
        ProductSpice.Visible = true;
        ProductSpice.Text = ("Mild");
        spiceimage.ImageUrl = ("http://localhost:59221/images/chilli2.png");
    }

    protected void addtocartbackbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mainmenu.aspx");
    }
}
