using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace job_form
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

         protected void btn_SendMessage_Click(object sender, EventArgs e)
         {
             SmtpClient smtpClient = new SmtpClient("www.gmail.com", 25);
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = false;
            smtpClient.Host = "relay-hosting.secureserver.net";
            smtpClient.Port = 25;
            smtpClient.Credentials = new System.Net.NetworkCredential("www.gmail.com", "abc1@");
             smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

             MailMessage mailMessage = new MailMessage(txtFrom.Text, txtTo.Text);
             mailMessage.Subject = txtSubject.Text;
             mailMessage.Body = txtBody.Text;
            smtpClient.UseDefaultCredentials = true;
            


            try
            {
                 smtpClient.Send(mailMessage);
                 Label1.Text = "Message sent";
             }
             catch (Exception ex)
             {
                 Label1.Text = ex.ToString();
             }

        }
        /*protected void EmailAbout_Click(object sender, EventArgs e)
        {
            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Exception Handling Test";
            myMessage.Body = "Test message body";
            myMessage.From = new MailAddress("me@yourprovider.com");
            myMessage.To.Add(new MailAddress("you@yourprovider.com"));

            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);
            Label1.Text = "Message sent";
        }
        try
           {
               //Create the msg object to be sent
               MailMessage msg = new MailMessage();
        //Add your email address to the recipients
        msg.To.Add(someone @any.com);
               //Configure the address we are sending the mail from
               MailAddress address = new MailAddress("user@mydomain.com");
        msg.From = address;
               msg.Subject = "anything";
               msg.Body = "anything";

               //Configure an SmtpClient to send the mail.
               SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
               client.EnableSsl = false;
               client.Host = "relay-hosting.secureserver.net";
               client.Port = 25;

               //Setup credentials to login to our sender email address ("UserName", "Password")
               NetworkCredential credentials = new NetworkCredential("user@mydomain.com", "Password");
        client.UseDefaultCredentials = true;
               client.Credentials = credentials;

               //Send the msg
               client.Send(msg);

               //Display some feedback to the user to let them know it was sent
               Label1.Text = "Your message was sent!";
           }
           catch (Exception ex)
           {
               //If the message failed at some point, let the user know
               Label1.Text = ex.ToString();
               //"Your message failed to send, please try again."
           }*/
    }
}
