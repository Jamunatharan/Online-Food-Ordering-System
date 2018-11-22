using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Paypalpayment : System.Web.UI.Page
{
    string s;
    string t;
    string[] a = new string[8];
    int total = 0;
    int deliverycharge = 3;
    int grandtotal = 0;
    string OrderNo;
    protected void Page_Load(object sender, EventArgs e)
    {
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

                total = total + (Convert.ToInt32(a[1].ToString()));
                grandtotal = total + deliverycharge;
            }
            Session["total"] = total.ToString();
        }

        OrderNo = Class1.GetRandomPassword(10).ToString();
        Session["OrderNo"] = OrderNo.ToString();

        Response.Write("<form action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post' name='buyCredits' id='buyCredits'>");
        Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
        Response.Write("<input type='hidden' name='business' value='jainilkaran-facilitator@gmail.com'>");       
        Response.Write("<input type='hidden' name='currency_code' value='GBP'>");
        Response.Write("<input type='hidden' name='item_name' value='Payment for your order'>");
        Response.Write("<input type='hidden' name='item_number' value='0'>");
        Response.Write("<input type='hidden' name='amount' value='"+Session["total"].ToString()+"'>");
         Response.Write("<input type='hidden' name='return' value='http://localhost:59221/Confirmation.aspx?order="+OrderNo.ToString()+"'>");
        Response.Write("</form>");

        Response.Write("<script type='text/javascript'>");
        Response.Write("document.getElementById('buyCredits').submit();");
        Response.Write("</script>");

        Response.Redirect("Confirmation.aspx");
    }

}
