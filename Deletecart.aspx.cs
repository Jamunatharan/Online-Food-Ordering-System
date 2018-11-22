using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Deletecart : System.Web.UI.Page
{
    string s;
    string t;
    string[] a = new string[8];
    int id;
    string ProductName, ProductPrice, ProductDescription, ProductImage;
    string productquantity, productspice, productnote;
    int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[8] { new DataColumn("ProductName"), new DataColumn("ProductPrice"), new DataColumn("ProductDescription"), new DataColumn("ProductImage"), new DataColumn("ProductQuantity"), new DataColumn("ProductSpice"), new DataColumn("ProductNote"), new DataColumn("id") });
        if (Request.Cookies["shopping"] != null)
        {
            s = Convert.ToString(Request.Cookies["shopping"].Value);
            string[] strArr = s.Split('|');
            for (int i = 0; i < strArr.Length; i++)
            {
                t = Convert.ToString(strArr[i].ToString());
                String[] strArr1 = t.Split(',');
                for (int j = 0; j < strArr1.Length; j++)
                {
                    a[j] = strArr1[j].ToString();

                }
                dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), a[4].ToString(), a[5].ToString(), a[6].ToString(), i.ToString());

            }
        }
       
        dt.Rows.RemoveAt(id);
        Response.Cookies["shopping"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["shopping"].Expires = DateTime.Now.AddDays(-1);       

        foreach (DataRow dr in dt.Rows)
        {
            ProductName = dr["ProductName"].ToString();
            ProductPrice = dr["ProductPrice"].ToString();
            ProductDescription = dr["ProductDescription"].ToString();
            ProductImage = dr["ProductImage"].ToString();
            productquantity = dr["ProductQuantity"].ToString();
            productspice = dr["ProductSpice"].ToString();
            productnote = dr["ProductNote"].ToString();
            count = count + 1;
            if (count==1)
            {
                Response.Cookies["shopping"].Value = ProductName.ToString() + "," + ProductPrice.ToString() + "," + ProductDescription.ToString() + "," + ProductImage.ToString()+","+productquantity.ToString()+","+productspice.ToString()+","+productnote.ToString();
                Response.Cookies["shopping"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["shopping"].Value = Request.Cookies["shopping"].Value + "|" + ProductName.ToString() + "," + ProductPrice.ToString() + "," + ProductDescription.ToString() + "," + ProductImage.ToString() + "," + productquantity.ToString() + "," + productspice.ToString() + "," + productnote.ToString();
                Response.Cookies["shopping"].Expires = DateTime.Now.AddDays(1);
            }           
        }
        Response.Redirect("Viewcart.aspx");
    }
}