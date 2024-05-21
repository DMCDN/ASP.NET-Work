using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;


namespace IM2023
{
    public partial class shoppingCart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                GetShoppingCartData(GetUserID());

            }
            catch (Exception ex)
            {
                Response.Write("錯誤：請先登入\n\n"); //
                BtnSendOrder.Visible = false;
            }
        }

        private void ShowAlert(string message, string redirectUrl = null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{message}');{(redirectUrl != null ? $"window.location = '{redirectUrl}';" : "")}", true);
        }

        private int GetUserID()
        {
            int userID = int.Parse(Request.Cookies["UserInfoCookie"].Values["UserId"]);
            return userID; 
        }


        private void GetShoppingCartData(int userID)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = @"
            SELECT 
                cd.p_id,
                p.p_name AS ProductName,
                cd.p_quantity AS Quantity,
                cd.p_price AS Price
            FROM 
                CartDetail cd
            JOIN 
                Product p ON cd.p_id = p.p_id
            JOIN 
                ShoppingCart c ON cd.c_id = c.c_id
            WHERE 
                c.u_id = @userID;
        ";

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@userID", userID);

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable cartData = new DataTable();
                    adapter.Fill(cartData);
                    GridViewCart.DataSource = cartData;
                    GridViewCart.DataBind();
                    CalculateTotalPrice();

                }
            }

        }

        private void CalculateTotalPrice()
        {
            decimal totalPrice = 0;

            // 根據您的購物車內容計算總價
            foreach (GridViewRow row in GridViewCart.Rows)
            {

                if (decimal.TryParse(row.Cells[3].Text, out decimal productPrice)) //row.Cells[2].Text
                {
                    totalPrice += productPrice;
                }
            }

            DataTable dt = new DataTable();
            dt.Columns.Add("Total", typeof(decimal));
            dt.Rows.Add(totalPrice);

            GridViewTotal.DataSource = dt;
            GridViewTotal.DataBind();
        }

        protected void btn_RemoveFromCart_Click(object sender, EventArgs e)
        {

            Button btnRemove = (Button)sender;

           
            int productId = Convert.ToInt32(btnRemove.CommandArgument);

            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string deleteQuery = "DELETE FROM CartDetail WHERE p_id = @productId";

                using (SqlCommand cmd = new SqlCommand(deleteQuery, connection))
                {
                    cmd.Parameters.AddWithValue("@productId", productId);
                    cmd.ExecuteNonQuery();
                }
            }

            GetShoppingCartData(GetUserID());
        }



        private DataTable GetShoppingCartDataTable(int userID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = @"
            SELECT 
                cd.p_id,
                cd.p_quantity AS Quantity
            FROM 
                CartDetail cd
            JOIN 
                ShoppingCart c ON cd.c_id = c.c_id
            WHERE 
                c.u_id = @userID;
        ";

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@userID", userID);

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable cartData = new DataTable();
                    adapter.Fill(cartData);

                    return cartData;
                }
            }
        }
        protected void BtnSendOrder_Click(object sender, EventArgs e)
        {
            int userID = GetUserID();

            // 提取購物車內容
            DataTable cartData = GetShoppingCartDataTable(GetUserID());

            UpdateProductInventory(cartData);
            // 清空
            ClearShoppingCart(userID);
            // 刷新
            //
            ShowAlert("訂單已成功提交");
            GetShoppingCartData(userID);
        }




        private void UpdateProductInventory(DataTable cartData)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                foreach (DataRow row in cartData.Rows)
                {
                    int productID = Convert.ToInt32(row["p_id"]);
                    int quantity = Convert.ToInt32(row["Quantity"]);

                    // 扣除對應商品的庫存
                    string updateQuery = "UPDATE Product SET p_left = p_left - @quantity WHERE p_id = @productID";

                    using (SqlCommand cmd = new SqlCommand(updateQuery, connection))
                    {
                        cmd.Parameters.AddWithValue("@productID", productID);
                        cmd.Parameters.AddWithValue("@quantity", quantity);

                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }

        private void ClearShoppingCart(int userID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // 清空購物車內容
                string clearCartQuery = "DELETE FROM CartDetail WHERE c_id IN (SELECT c_id FROM ShoppingCart WHERE u_id = @userID)";

                using (SqlCommand cmd = new SqlCommand(clearCartQuery, connection))
                {
                    cmd.Parameters.AddWithValue("@userID", userID);

                    cmd.ExecuteNonQuery();
                }
            }
        }




    }

}
