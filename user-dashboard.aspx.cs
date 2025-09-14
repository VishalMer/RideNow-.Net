using System;
using System.Configuration;
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

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}

