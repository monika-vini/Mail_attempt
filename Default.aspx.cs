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
namespace job_form
{
    public partial class _Default : System.Web.UI.Page
    {
        // SqlConnection con = new SqlConnection();

        string genval,statusval,langval;
       


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
            string query = "INSERT INTO form_value(`id`,`fname`,`lname`,`dob`,`gender`,`mail`,`addr`,`p_code`,`mble_no`,`course_name`,`dept_value`,`inst_name`,`pass_yr`,`langvalue`,`m_status`,`keyval`,`expval`) VALUES (NULL,'" + txtbx1.Text+ "','" + txtbx2.Text + "','" + bday.Text + "','" + genval + "','" + txtbx3.Text + "','" + txtbx4.Text + "','" + txtbx5.Text + "','" + txtbx6.Text + "','" + courseval.SelectedValue + "','" + dept.SelectedValue + "','" + txtbx7.Text + "', '" + pass_yr.SelectedValue + "','" + langval + "','" + statusval + "','" + txtbx8.Text + "','" + txtbx9.Text + "')";
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
        }
    }
}