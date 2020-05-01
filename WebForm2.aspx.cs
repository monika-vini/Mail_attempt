using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace job_form
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Bttn_Send_Click(object sender, EventArgs e)
        {
            SendMail();
        }
        private void SendMail()
        {
            Response.Write("<script> alert('Works '+'" + txtTo.Text + "');</script>");
            try
            {
                MailMessage mail = new MailMessage();
            mail.To.Add(txtTo.Text);

            mail.From = new MailAddress("monikavini8864@gmail.com");
            mail.Subject = "Email using Gmail";
            string Body = txtmessage.Text;
            mail.Body = Body;
            SmtpClient smtp = new SmtpClient{
                Host = "smtp.gmail.com",
                Port = 587,
                UseDefaultCredentials = false,
                Credentials = new System.Net.NetworkCredential("monikavini8864@gmail.com", "Vinitha09@"),
                Timeout = 30000,
                DeliveryMethod = SmtpDeliveryMethod.Network,
               EnableSsl = true,
               

            };
                mail.IsBodyHtml = true;
                smtp.Send(mail);
                Response.Write("<script> alert('User succesfully registered');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");

                // Show any error message.
                // MessageBox.Show(ex.Message);
            }

        }
        

    }

}