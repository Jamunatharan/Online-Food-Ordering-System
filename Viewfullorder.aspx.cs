using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Viewfullorder : System.Web.UI.Page
{
  SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_A41AE2_Restaurant"].ConnectionString);
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());

        conn.Open();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from Orders where Id="+id+"";
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        displayadmin.DataSource = dt1;
        displayadmin.DataBind();
        cmd1.ExecuteNonQuery();
        conn.Close();


        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from OrderDetails where OrderID="+id+"";
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        vieworderrepeater.DataSource = dt;
        vieworderrepeater.DataBind();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    protected void Backtoordersbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DisplayorderAdmin.aspx");
    }



    protected void Orderready_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());

        conn.Open();
        SqlCommand cmd3 = conn.CreateCommand();
        cmd3.CommandType = CommandType.Text;
        cmd3.CommandText = "select Email from Orders where Id=" + id + "";
        DataTable dt3 = new DataTable();
        SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
        da3.Fill(dt3);        
        cmd3.ExecuteNonQuery();
        foreach (DataRow dr in dt3.Rows)
        {
            Session["orderready"] = dr["Email"].ToString();
           
        }
        conn.Close();

        conn.Open();
        SqlCommand cmd4 = conn.CreateCommand();
        cmd4.CommandType = CommandType.Text;
        cmd4.CommandText = "select OrderType from OrderDetails where OrderType='Takeaway' AND OrderID=" + id + "";
        DataTable dt4 = new DataTable();
        SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
        da4.Fill(dt4);
        cmd3.ExecuteNonQuery();
        foreach (DataRow dr in dt4.Rows)
        {
            Session["takeawaystatus"] = dr["OrderType"].ToString();

        }
        conn.Close();


        if (Session["takeawaystatus"] != null)
        {

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(Session["orderready"].ToString());
            mail.To.Add(Session["mobile"] + "@txtlocal.co.uk");
            mail.From = new MailAddress("jamunatharan@gmail.com", "Golden Palace", System.Text.Encoding.UTF8);
            mail.Subject = "Your order status.";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "If you have ordered to collect your order at Restaurant, It is ready for collection.";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("jamunatharan@gmail.com", "********");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);

            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }

            }

        }
        else
        {

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(Session["orderready"].ToString());
            mail.To.Add(Session["mobile"] + "@txtlocal.co.uk");
            mail.From = new MailAddress("jamunatharan@gmail.com", "Golden Palace", System.Text.Encoding.UTF8);
            mail.Subject = "Your order status.";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Your order is on its way.";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("jamunatharan@gmail.com", "********");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);

            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }

            }

        }
    }
}
