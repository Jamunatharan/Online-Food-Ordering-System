using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminmain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminlogin"] != null)
        {
            admindisplay.Text = Session["adminlogin"].ToString();
        }
    }
    protected void manageorderbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DisplayorderAdmin.aspx");
    }
    protected void manageproductbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manageproduct.aspx");
    }

    protected void adminlogoutbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Adminlogin.aspx");
    }
}