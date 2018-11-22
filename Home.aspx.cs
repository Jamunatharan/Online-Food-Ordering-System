using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public object document { get; private set; }
    public string HashLocation { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void DineinBtn_Click(object sender, EventArgs e)
    {
        this.HashLocation = "reservetable";
    }


    protected void BookatableBtn_Click(object sender, EventArgs e)
    {
        if (ReservationDateTextBox.Text == "SELECT DATE" || ReservationDateTextBox.Text == "")
        {
            selectDateMsg.Text = "*Please select the date";
        }
        else
        {
            selectDateMsg.Text = "";
        }

        if (DropDownList1.SelectedValue == "SELECT TIME")
        {
            selectTimeMsg.Text = "*Please select the time";
        }
        else
        {
            selectTimeMsg.Text = "";
        }
        if (DropDownList2.SelectedValue == "PARTY SIZE")
        {
            selectPartysizeMsg.Text = "*Please select the number of people";
        } else
        {
            selectPartysizeMsg.Text = "";
        }

        if (selectDateMsg.Text == "" && selectTimeMsg.Text == "" && selectPartysizeMsg.Text == "" )
        {
            tableBookedMsg.Text = "Thank you for reserving a table with us. Please call us to make any changes.";
        }       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mainmenu.aspx");
    }
}