using System;
using System.Data.SqlClient;

namespace ENovelHunt
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\LENOVO2\\source\\repos\\ENovelHunt\\ENovelHunt\\App_Data\\register.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(username.Text) || string.IsNullOrEmpty(password.Text))
            {
                Error.ForeColor = System.Drawing.Color.Red;
                Error.Text = "Please enter your credentials";
                return;
            }

            string check = "SELECT COUNT(*) FROM [Table] WHERE username = '" + username.Text + "' AND password = '" + password.Text + "'";
            SqlCommand cmd = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                // Set a session variable to indicate that the user is logged in
                Session["IsLoggedIn"] = true;
                Response.Redirect("home.aspx");
            }
            else
            {
                Error.ForeColor = System.Drawing.Color.Red;
                Error.Text = "Invalid username or password";
            }
        }
    }
}
