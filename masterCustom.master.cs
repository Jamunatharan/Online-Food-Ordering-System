using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class masterCustom : System.Web.UI.MasterPage
{
   
    string s;
    string t;
    string[] a = new string[8];
    int total = 0;
    int totalbasket = 0;
    int deliverycharge = 3;
    int grandtotal = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            //LblLoginUser.Text += Session["New"].ToString();
            loginid.Visible = false;
            signupid.Visible = false;
            logoutid.Visible = true;
        }
        else
        {
            loginid.Visible = true;
            signupid.Visible = true;
            logoutid.Visible = false;
        }

        if (Session["delivery"] != null)
        {
            total = total + deliverycharge;
        }


        if (Request.Cookies["shopping"] == null)
        {
            shoppingcartprice.Text = "0.00";
        }
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

                total = total + (Convert.ToInt32(a[1].ToString())) * (Convert.ToInt32(a[4].ToString()));

                totalbasket = totalbasket + 1;
                shoppingcartitem.Text = totalbasket.ToString();
                shoppingcartprice.Text = total.ToString() + ".00";

            }
        }
    }

    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void logoutid_Click(object sender, EventArgs e)
    {
        Session.Clear();
        logoutid.Visible = false;
        loginid.Visible = true;
        signupid.Visible = true;
        Response.Redirect("Login.aspx");
    }
}
