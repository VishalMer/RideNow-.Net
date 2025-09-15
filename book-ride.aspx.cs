using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Web.UI;

namespace RideNow
{
    public partial class book_ride1 : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                readUserDetails();
                txtFare.Text = "50.00";
            }
        }

        void getcon()
        {
            con = new SqlConnection(connect);
            con.Open();
        }

        void readUserDetails()
        {
            string userId = Session["UserID"].ToString();
            getcon();

            cmd = new SqlCommand("select full_name, phone_number from users where user_id = '" + userId + "'", con);

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                txtName.Text = reader["full_name"].ToString();
                txtPhone.Text = reader["phone_number"].ToString();

            }
            reader.Close();
            con.Close();
        }

        void clearForm()
        {
            ddlVehicleType.SelectedIndex = 0;
            txtVehicleModel.Text = "";
            txtPickupTime.Text = "";
            txtPickupAddress.Text = "";
            txtDropoffAddress.Text = "";
        }

        protected void btnBookRide_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(ddlVehicleType.SelectedValue) ||
                string.IsNullOrWhiteSpace(txtPickupTime.Text) ||
                string.IsNullOrWhiteSpace(txtPickupAddress.Text) ||
                string.IsNullOrWhiteSpace(txtDropoffAddress.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please fill out all required fields.');", true);
                return;
            }

            DateTime pickupDateTime;
            if (!DateTime.TryParse(txtPickupTime.Text, out pickupDateTime))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid date and time format.');", true);
                return;
            }

            string sqlFormattedDateTime = pickupDateTime.ToString("yyyy-MM-dd HH:mm:ss");
            string fareValue = "50.00";

            getcon();

            string userId = Session["UserID"].ToString();
            string insertQuery = "insert into Bookings (user_id, full_name, phone_number, vehicle_type, vehicle_model, total_fare, pickup_time, pickup_address, dropoff_address) values ('" + userId + "', '" + txtName.Text.Trim() + "', '" + txtPhone.Text.Trim() + "', '" + ddlVehicleType.SelectedValue + "', '" + txtVehicleModel.Text.Trim() + "', " + fareValue + ", '" + sqlFormattedDateTime + "', '" + txtPickupAddress.Text.Trim() + "', '" + txtDropoffAddress.Text.Trim() + "')";

            cmd = new SqlCommand(insertQuery, con);

            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your ride has been booked successfully!'); window.location='user-dashboard.aspx';", true);
            clearForm();
        }
    }
}

