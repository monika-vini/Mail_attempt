using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.Net.Mail;
namespace job_form
{
    public partial class _Default : System.Web.UI.Page
    {
        // SqlConnection con = new SqlConnection();

        string genval, statusval, langval;



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                genval = "Male";
            }
            else if (RadioButton2.Checked)
            {
                genval = "Female";
            }

            if (CheckBox1.Checked)
            {
                langval = "ENGLISH";
            }
            else if (CheckBox2.Checked)
            {
                langval = "TAMIL";
            }
            else if (CheckBox3.Checked)
            {
                langval = "OTHERS";
            }

            if (RadioButton3.Checked)
            {
                statusval = "Yes";
            }

            else if (RadioButton2.Checked)
            {
                statusval = "No";
            }



            string connectionString = "datasource=127.0.0.1; port=3306; username=root; password=; database=my_form";
            //string query = "INSERT INTO form_value(`pass_yr`)VALUES ('" + pass_yr.SelectedValue + "')";
            //string query = "INSERT INTO form_value(`id`,`fname`,`lname`,`dob`,`gender`,`mail`,`addr`,`p_code`,`mble_no`,`dept_value`)VALUES (NULL,'" + txtbx1.Text + "','" + txtbx2.Text + "','" + bday.Text + "','" + genval + "','" + txtbx3.Text + "','" + txtbx4.Text + "','" + txtbx5.Text + "','" + txtbx6.Text + "','" + dept.SelectedValue + "')";
            string query = "INSERT INTO form_value(`id`,`fname`,`lname`,`dob`,`gender`,`mail`,`addr`,`p_code`,`mble_no`,`course_name`,`dept_value`,`inst_name`,`pass_yr`,`langvalue`,`m_status`,`keyval`,`expval`) VALUES (NULL,'" + txtbx1.Text + "','" + txtbx2.Text + "','" + bday.Text + "','" + genval + "','" + txtbx3.Text + "','" + txtbx4.Text + "','" + txtbx5.Text + "','" + txtbx6.Text + "','" + courseval.SelectedValue + "','" + dept.SelectedValue + "','" + txtbx7.Text + "', '" + pass_yr.SelectedValue + "','" + langval + "','" + statusval + "','" + txtbx8.Text + "','" + txtbx9.Text + "')";
            // Which could be translated manually to :
            // INSERT INTO user(`id`, `first_name`, `last_name`, `address`) VALUES (NULL, 'Bruce', 'Wayne', 'Wayne Manor')

            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            MySqlCommand commandDatabase = new MySqlCommand(query, databaseConnection);
            commandDatabase.CommandTimeout = 60;

            try
            {

                Response.Write("<script> alert('" + dept.SelectedValue + "');</script>");
                databaseConnection.Open();
                MySqlDataReader myReader = commandDatabase.ExecuteReader();

                Response.Write("<script> alert('User succesfully registered');</script>");

                

                //MessageBox.Show("User succesfully registered");

                databaseConnection.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");

                // Show any error message.
                // MessageBox.Show(ex.Message);
            }
            SendMail();
        }
        private void SendMail()
        {

            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(txtbx3.Text);
                mail.From = new MailAddress("starssparkling2020@gmail.com");
                mail.Subject = "JOB SEEKER: you are registered the online job portal  ";
                string Body = "we are writing to you with respect to your application on the portal." +
                    "Most of the companies are starting to hire now and we strongly beleive that your application is suitable and" +
                    " if shortlisted, you will be called for the interview .";
                mail.Body = Body;
                MailMessage mail2 = new MailMessage();
                mail2.To.Add("monikavini8864@gmail.com");
                mail2.From = new MailAddress("monikavini8864@gmail.com");
                mail2.Subject = " form notification ";
                string Body1 = txtbx1.Text + " " + txtbx2.Text + "" +
                    " A new job form details are added..";
                mail2.Body = Body1;
                SmtpClient smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    UseDefaultCredentials = false,
                    Credentials = new System.Net.NetworkCredential("starssparkling2020@gmail.com", "star123@"),
                    Timeout = 30000,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    EnableSsl = true,
                };
                mail.IsBodyHtml = true;
                smtp.Send(mail);
                Response.Write("<script> alert(' user Information are succesfuly registered' + '" + txtbx3.Text + "');</script>");
                mail2.IsBodyHtml = true;
                smtp.Send(mail2);
                Response.Write("<script> alert(' Information are succesfuly registered');</script>");
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