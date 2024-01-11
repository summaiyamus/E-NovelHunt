using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ENovelHunt
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is logged in
            bool isLoggedIn = IsUserLoggedIn();

            // Set the login status in the session variable
            Session["IsLoggedIn"] = isLoggedIn;

            // Call the client-side function to redirect based on the login status
            if (isLoggedIn)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "RedirectScript", "redirectToNovel();", true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "RedirectScript", "redirectToLogin();", true);
            }
        }

        // Example method to check if the user is logged in
        private bool IsUserLoggedIn()
        {
            // Implement your logic to check if the user is logged in
            // Return true if logged in, false otherwise
            // You can use any authentication mechanism or session variables to check the login status
            // Replace this code with your actual logic
            bool isLoggedIn = false;

            // Example: Check if the user has a session variable indicating login status
            if (Session["UserId"] != null)
            {
                isLoggedIn = true;
            }

            return isLoggedIn;
        }
    }
}
