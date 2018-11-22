using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Viewcart : System.Web.UI.Page
{
    string s;
    string t;
    string[] a = new string[8];
    int total = 0;
    int deliverycharge = 3;
    int grandtotal = 0;
    string productqtystr, productspicestr, productnotestr; 
    protected void Page_Load(object sender, EventArgs e)
    {
       // productqtystr = Request.Cookies["custom"]["ProductQty"];
       // productspicestr = Request.Cookies["custom"]["ProductSpice"];
       //productnotestr = Request.Cookies["custom"]["ProductNote"];
      // String ViewQty = ((TextBox)Repeatercustom.Controls[0].FindControl("ViewQty")).Text.ToString();
      // String ProdSpice = ((TextBox)Repeatercustom.Controls[0].FindControl("ProdSpice")).Text.ToString();
      // String ProNot = ((TextBox)Repeatercustom.Controls[0].FindControl("ProNot")).Text.ToString();

       // ViewQty = productqtystr.ToString();
      // ProdSpice = productspicestr.ToString();
       //ProNot = productnotestr.ToString();

        if (Request.Cookies["shopping"] == null)
        {
            cartemptylbl.Text = "Your shopping cart is empty.";
            checkoutbtn.Visible = false;
        }
        else
        {
            checkoutbtn.Visible = true;
            cartemptylbl.Text = "";
        }
       
        
        
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[8] { new DataColumn("ProductName"), new DataColumn("ProductPrice"), new DataColumn("ProductDescription"), new DataColumn("ProductImage"),new DataColumn("ProductQuantity"), new DataColumn("ProductSpice"), new DataColumn("ProductNote"), new DataColumn("id") });
        if (Request.Cookies["shopping"]!= null)
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

                total = total + (Convert.ToInt32(a[1].ToString()))* (Convert.ToInt32(a[4].ToString()));
                grandtotal = total + deliverycharge;
            }
        }

        Viewcartlist.DataSource = dt;
        Viewcartlist.DataBind();

        labeltotal.Text = "£"+ total.ToString() + ".00";

        if (Session["delivery"] != null)
        {
            Labeldelivchargehead.Visible = true;
            deliverychargelabel.Visible = true;
            grandtotalheadlbl.Visible = true;
            grandtotallabel.Visible = true;
            deliverychargelabel.Text = "£" + deliverycharge.ToString() + ".00";
            grandtotallabel.Text ="£"+ grandtotal.ToString() + ".00";            
        }
        else
        {
            Labeldelivchargehead.Visible = false;
            deliverychargelabel.Visible = false;
            grandtotalheadlbl.Visible = false;
            grandtotallabel.Visible = false;
        }
    }
   

    protected void continuebtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mainmenu.aspx");
    }

    protected void checkoutbtn_Click(object sender, EventArgs e)
    {
        Session["checkout"] = "yes";
        if (Session["user"]==null)
        {

            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}

public class productQtyIncrease
{
}