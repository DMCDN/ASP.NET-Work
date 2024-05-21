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
    public partial class login : System.Web.UI.Page
    {
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(@"Data Source=localhost;Initial Catalog=LWork;Persist Security Info=True;User ID=sa;Password=1234");
            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("select * from UserInfo where u_Username=@u_Username and u_Password=@u_Password", con);
            cmd.Parameters.AddWithValue("@u_Username", UsernameTextBox.Text);
            cmd.Parameters.AddWithValue("@u_Password", GetMD5Hash(PasswordTextBox.Text));
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
        
            if (dt.Rows.Count > 0)
            {
                Session["u_id"] = dt.Rows[0]["u_id"].ToString();
                SetCookie(UsernameTextBox.Text, dt.Rows[0]["u_id"].ToString());

                ShowAlert("登入成功");
                Response.Redirect("Intro01.aspx"); //[31208]這個一定要擺最後面

                            //Session.RemoveAll();
            }
                        else
                        {
                            StatusLabel.Text = "帳號或密碼錯誤";
                            StatusLabel.ForeColor = System.Drawing.Color.Red;
                        }
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

        private void ShowAlert(string message, string redirectUrl = null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{message}');{(redirectUrl != null ? $"window.location = '{redirectUrl}';" : "")}", true);
        }

        private void SetCookie(string username, string userId)
        {
            HttpCookie cookie = new HttpCookie("UserInfoCookie");
            cookie.Values["Username"] = username;
            cookie.Values["UserId"] = userId;
            cookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(cookie);
        }

        protected void UsernameTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
