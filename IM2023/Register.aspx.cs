using System.IO;
using System.Web.Script.Serialization;
using System.Security.Cryptography;
using System.Text;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace IM2023

{
    public class User
    {
        public string Username { get; set; }
        public string PasswordHash { get; set; }
    }

    public partial class Register : System.Web.UI.Page
    {
        protected void RegisterButton_Click(object sender, EventArgs e)
        {

            // 帳密是否為空
            if (string.IsNullOrEmpty(UsernameTextBox.Text) || string.IsNullOrEmpty(PasswordTextBox.Text))
            {
                ShowAlert("帳號或密碼不得為空");
                return;
            }
    
            // Username是否相沖
            if (bIsUsernameExists(UsernameTextBox.Text))
            {
                ShowAlert("該帳號已被註冊");
                return;
            }


            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;
            
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string insertQuery = "INSERT INTO UserInfo (u_Username, u_Password, u_Createtime) VALUES (@u_Username, @u_Password, @u_Createtime)";
            using (SqlCommand cmd = new SqlCommand(insertQuery, con))
            {
                cmd.Parameters.AddWithValue("@u_Username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@u_Password", GetMD5Hash(PasswordTextBox.Text));
                cmd.Parameters.AddWithValue("@u_Createtime", DateTime.Now);

                con.Open();
                cmd.ExecuteNonQuery();
                ShowAlert("註冊成功，將跳轉至登入頁面", "login.aspx");

            }
        }


        }

        private void ShowAlert(string message, string redirectUrl = null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{message}');{(redirectUrl != null ? $"window.location = '{redirectUrl}';" : "")}", true);
        }
    

        private string GetMD5Hash(string input)
        {
            using (MD5 md5 = MD5.Create())
            {
                byte[] inputBytes = Encoding.UTF8.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    builder.Append(hashBytes[i].ToString("x2"));
                }

                return builder.ToString();
            }
        }
    
        private bool bIsUsernameExists(string username)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string selectQuery = "SELECT COUNT(*) FROM UserInfo WHERE u_Username = @u_Username";
                using (SqlCommand cmd = new SqlCommand(selectQuery, con))
                {
                    cmd.Parameters.AddWithValue("@u_Username", username);
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
        }



    }
}
