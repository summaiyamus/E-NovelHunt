using System;
using System.Data.SqlClient;

namespace ENovelHunt
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\LENOVO2\\source\\repos\\ENovelHunt\\ENovelHunt\\App_Data\\register.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(username.Text) || string.IsNullOrEmpty(password.Text) || string.IsNullOrEmpty(firstnametext.Text) || string.IsNullOrEmpty(gender.Text) || string.IsNullOrEmpty(lastnametext.Text))
            {
                Error.ForeColor = System.Drawing.Color.Red;
                Error.Text = "Please fill in all the fields";
                return;
            }

            // Check if the username already exists in the database
            con.Open();
            SqlCommand checkUsernameCmd = new SqlCommand("SELECT COUNT(*) FROM [Table] WHERE username = @Username", con);
            checkUsernameCmd.Parameters.AddWithValue("@Username", username.Text);
            int existingUserCount = Convert.ToInt32(checkUsernameCmd.ExecuteScalar());
            con.Close();

            if (existingUserCount > 0)
            {
                Error.ForeColor = System.Drawing.Color.Red;
                Error.Text = "Username already exists. Please choose a different username.";
                return;
            }

            // Insert the new user into the database
            con.Open();
            SqlCommand insertUserCmd = new SqlCommand("INSERT INTO [Table] (firstname, lastname, gender, username, password) VALUES (@FirstName, @LastName, @Gender, @Username, @Password)", con);
            insertUserCmd.Parameters.AddWithValue("@FirstName", firstnametext.Text);
            insertUserCmd.Parameters.AddWithValue("@LastName", lastnametext.Text);
            insertUserCmd.Parameters.AddWithValue("@Gender", gender.Text);
            insertUserCmd.Parameters.AddWithValue("@Username", username.Text);
            insertUserCmd.Parameters.AddWithValue("@Password", password.Text);
            insertUserCmd.ExecuteNonQuery();
            con.Close();

            // Clear the input fields
            firstnametext.Text = "";
            lastnametext.Text = "";
            gender.Text = "";
            username.Text = "";
            password.Text = "";
            // Set a session variable to indicate that the user is logged in
            Session["IsLoggedIn"] = true;
            Response.Redirect("home.aspx");
        }
    }
}
