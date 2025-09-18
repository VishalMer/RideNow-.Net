using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace RideNow
{
    public partial class contact1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This runs when the page first loads.
        }

        // This is the main action when the user clicks the "Send" button.
        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            // First, check if the form's data is valid. If not, stop here.
            if (!IsFormValid())
            {
                return;
            }

            // If the form is valid, try to save the message to the database.
            try
            {
                SaveMessageToDatabase();
                ShowSuccessMessage();
                ClearFormFields();
            }
            catch (Exception ex)
            {
                // If anything goes wrong, show a friendly error message.
                ShowErrorMessage(ex);
            }
        }

        // A simple method to check if the required fields are filled out.
        private bool IsFormValid()
        {
            if (string.IsNullOrWhiteSpace(txtName.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtMessage.Text) ||
                string.IsNullOrEmpty(ddlSubject.SelectedValue))
            {
                lblStatusMessage.Text = "Oops! Please fill out all the required fields (*).";
                lblStatusMessage.ForeColor = System.Drawing.Color.Red;
                return false; // The form is NOT valid.
            }
            return true; // The form IS valid.
        }

        // This method handles all the database work.
        private void SaveMessageToDatabase()
        {
            // Get the user's input and trim any extra spaces.
            string fullName = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string subject = ddlSubject.SelectedValue;
            string message = txtMessage.Text.Trim();

            // Get the database connection details from your Web.config file.
            string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            // This is the SQL command to insert a new message.
            string query = @"INSERT INTO ContactMessages 
                                (full_name, email, phone_number, subject, message) 
                             VALUES 
                                (@FullName, @Email, @PhoneNumber, @Subject, @Message)";

            using (var con = new SqlConnection(connectionString))
            using (var cmd = new SqlCommand(query, con))
            {
                // Add the user's data to the command safely to prevent security issues.
                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Subject", subject);
                cmd.Parameters.AddWithValue("@Message", message);

                // If the phone number is empty, store it as NULL in the database.
                if (string.IsNullOrEmpty(phone))
                {
                    cmd.Parameters.AddWithValue("@PhoneNumber", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@PhoneNumber", phone);
                }

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // A helper method to reset the form after success.
        private void ClearFormFields()
        {
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtMessage.Text = string.Empty;
            ddlSubject.SelectedIndex = 0;
        }

        // Displays a nice success message to the user.
        private void ShowSuccessMessage()
        {
            lblStatusMessage.Text = "Thank you! Your message has been sent successfully.";
            lblStatusMessage.ForeColor = System.Drawing.Color.Green;
        }

        // Shows a generic error if something fails, and logs the real error for the developer.
        private void ShowErrorMessage(Exception ex)
        {
            // This logs the detailed error for you (the developer) to see in the debug output.
            System.Diagnostics.Debug.WriteLine("CONTACT FORM ERROR: " + ex.ToString());

            // This shows a simple, friendly message to the user.
            lblStatusMessage.Text = "Sorry, something went wrong. Please try again later.";
            lblStatusMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
}