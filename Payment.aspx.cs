using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class Payment : System.Web.UI.Page
{SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_A41AE2_Restaurant"].ConnectionString);
    string order = "";
    string OrderID;
    string s;
    string t;
    string[] a = new string[9];
    string format = "yyyy-MM-dd HH:mm:ss";

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        
    }


    protected void paymentsubmitBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        //order = Request.QueryString["order"].ToString();
        //if (order == Session["OrderNo"].ToString())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Customer where Email='" + Session["user"].ToString() + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                SqlCommand cmd1 = conn.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "insert into Orders values('" + dr["Email"].ToString() + "','" + dr["Name"].ToString() + "','" + dr["Postcode"].ToString() + "','" + dr["FirstlineAddress"].ToString() + "','" + dr["City"].ToString() + "','" + dr["PhoneNumber"].ToString() + "')";
                cmd1.ExecuteNonQuery();
            }

            SqlCommand cmd2 = conn.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select top 1 * from Orders where Email='" + Session["user"].ToString() + "' order by Id desc";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            foreach (DataRow dr2 in dt2.Rows)
            {
                OrderID = dr2["Id"].ToString();
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
                    if (Session["delivery"] != null)
                    {
                       
                        
                        SqlCommand cmd3 = conn.CreateCommand();
                        cmd3.CommandType = CommandType.Text;
                        cmd3.CommandText = "insert into OrderDetails values('" + OrderID.ToString() + "','" + a[0].ToString() + "','" + a[1].ToString() + "','" + a[3].ToString() + "','" + a[4].ToString() + "','" + a[5].ToString() + "','" + a[6].ToString() + "','" + Session["delivery"].ToString() + "','" + DateTime.Now.ToString(format) + "')";
                        cmd3.ExecuteNonQuery();
                    }
                    else if (Session["takeaway"] != null)
                    {
                        SqlCommand cmd3 = conn.CreateCommand();
                        cmd3.CommandType = CommandType.Text;
                        cmd3.CommandText = "insert into OrderDetails values('" + OrderID.ToString() + "','" + a[0].ToString() + "','" + a[1].ToString() + "','" + a[3].ToString() + "','" + a[4].ToString() + "','" + a[5].ToString() + "','" + a[6].ToString() + "','" + Session["takeaway"].ToString() + "','" + DateTime.Now.ToString(format) + "')";
                        cmd3.ExecuteNonQuery();
                    }

                }

            }

        }
        // else
        //{
        //Response.Redirect("Login.aspx");
        //}


        if (Session["delivery"] != null)
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(Session["user"].ToString());
            mail.To.Add(Session["mobile"] + "@txtlocal.co.uk");
            mail.From = new MailAddress("jamunatharan@gmail.com", "Golden Palace", System.Text.Encoding.UTF8);
            mail.Subject = "Thank you for ordering with us.";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "We have recieved your order. You will be notified when your order is dispatched.";
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
            mail.To.Add(Session["user"].ToString());
            mail.To.Add(Session["mobile"] + "@txtlocal.co.uk");
            mail.From = new MailAddress("jamunatharan@gmail.com", "Golden Palace", System.Text.Encoding.UTF8);
            mail.Subject = "Thank you for ordering with us.";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "We have recieved your order. You will be notified when your order is ready for collection.";
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

        Response.Cookies["shopping"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["shopping"].Expires = DateTime.Now.AddDays(-1);
        
       Response.Redirect("Confirmation.aspx");
    }

    protected void paypalradiobtn_CheckedChanged(object sender, EventArgs e)
    {
        Response.Redirect("Paypalpayment.aspx");
    }
}
