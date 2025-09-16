using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideNow.driver
{
    public partial class dashboard1 : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("../login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                string userId = Session["UserID"].ToString();
                LoadDriverName(userId);
                LoadRideRequests();
            }
        }

        void getcon()
        {
            con = new SqlConnection(connect);
            con.Open();
        }

        void LoadDriverName(string userId)
        {
            getcon();
            cmd = new SqlCommand("select full_name from Users where user_id = '" + userId + "'", con);
            string driverName = cmd.ExecuteScalar()?.ToString();
            con.Close();

            if (!string.IsNullOrEmpty(driverName))
            {
                // Display only the first name in the welcome message
                litDriverName.Text = driverName.Split(' ')[0];
            }
        }

        void LoadRideRequests()
        {
            getcon();
            // Fetches the top 4 most recent pending bookings
            cmd = new SqlCommand("select top 4 b.booking_id, b.pickup_address, b.dropoff_address, u.full_name from Bookings b join Users u on b.user_id = u.user_id where b.booking_status = 'Pending' order by b.created_at desc", con);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                rptRideRequests.DataSource = dt;
                rptRideRequests.DataBind();
                litRequestCount.Text = $"<span class='request-count'>{dt.Rows.Count} New</span>";
            }
            else
            {
                rptRideRequests.Visible = false;
                litNoRequests.Visible = true;
                litNoRequests.Text = "<div class='text-center p-4'>No new ride requests at the moment.</div>";
                litRequestCount.Text = "<span class='request-count'>0 New</span>";
            }
            con.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../login.aspx");
        }
    }
}

