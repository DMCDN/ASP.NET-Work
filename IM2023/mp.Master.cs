using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IM2023
{
    public partial class mp : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            HttpCookie cookie = Request.Cookies["UserInfoCookie"];
            if (cookie != null)
            {

                LogginState(Request.Cookies["UserInfoCookie"].Values["Username"]);
                SyncCartItemCount();

            }
            else
            {
                LogoutState();
                
            }
            

        }



        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            HttpCookie cookie = new HttpCookie("UserInfoCookie");
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('登出成功');window.location ='Intro01.aspx';",
                true);
        }

        public void LogginState(string username)
        {

            registerButton.Visible = false;
            loginButton.Visible = false;
            usernameText.InnerText = $"歡迎：{username}";
            logoutButton.Visible = true;
        }

        public void LogoutState()
        {

            registerButton.Visible = true;
            loginButton.Visible = true;
            usernameText.InnerText = "您尚未登入";
            logoutButton.Visible = false;
        }

        private int GetUserID()
        {
            int userID = int.Parse(Request.Cookies["UserInfoCookie"].Values["UserId"]);
            return userID;
        }

        protected void SyncCartItemCount()
        {

            try
            {

                int userId = GetUserID();
                int cartItemCount = GetCartCount(userId); 

                btnShoppingCart.InnerText = $"購物車({cartItemCount})";


            }
            catch (Exception ex)
            {
                btnShoppingCart.InnerText = $"購物車(0)";
            }

         }

        private int GetCartCount(int userID)
        {

            int cartItemCount = 0;

            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = @"
                                SELECT 
                                    SUM(cd.p_quantity) AS TotalQuantity
                                FROM 
                                    CartDetail cd
                                JOIN 
                                    ShoppingCart c ON cd.c_id = c.c_id
                                WHERE 
                                    c.u_id = @userID;";

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@userID", userID);

                    object result = cmd.ExecuteScalar();

                    if (result != null && result != DBNull.Value)
                    {
                        cartItemCount = Convert.ToInt32(result);
                    }
                }
            }

            return cartItemCount;

        }


    }
}