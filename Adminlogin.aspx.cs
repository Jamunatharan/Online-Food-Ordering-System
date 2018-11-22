using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void adminsignbtn_Click(object sender, EventArgs e)
    {
        if (adminuser.Text=="admin123"  && adminpass.Text == "1234qwer")
        {
            
            Session["adminlogin"] = "Admin";
            Response.Redirect("adminmain.aspx");
        }
        else if (adminuser.Text != "admin123")
        {
            userwronglbl.Text = "Wrong username";
        }
        else if(adminpass.Text!="1234qwer")
        {
            passwronglbl.Text = "Wrong password";
        }

    }
}