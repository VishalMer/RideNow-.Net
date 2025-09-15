using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideNow
{
    public partial class user_dashboard1 : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        void getcon()
        {
            con = new SqlConnection(connect);
            con.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    string userId = Session["UserID"].ToString();
                    displayUser(userId);
                    DisplayRecentRides(userId);
                }
            }
        }

        protected void displayUser(string currentUserId)
        {
            getcon();
            cmd = new SqlCommand("select full_name from Users where user_id = '" + currentUserId + "'", con);

            object result = cmd.ExecuteScalar();

            if (result != null)
            {
                string userName = result.ToString();
                litUserNameWelcome.Text = userName;
                litUserNameProfile.Text = userName;
            }
            con.Close();
        }

        protected void DisplayRecentRides(string currentUserId)
        {
            getcon();
            string query = "select top 3 pickup_address, dropoff_address, pickup_time, total_fare, booking_status from Bookings where user_id = '" + currentUserId + "' order by created_at desc";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                rptRecentRides.DataSource = dt;
                rptRecentRides.DataBind();
            }
            else
            {
                rptRecentRides.Visible = false;
                litNoRides.Visible = true;
                litNoRides.Text = "<div style='text-align:center; padding: 20px;'>You have no recent rides.</div>";
            }
            con.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}

