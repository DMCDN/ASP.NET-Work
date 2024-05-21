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
    public partial class shop : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_AddToCart_Click(object sender, EventArgs e)
        {
            //登入檢測
           try  {

                // 取得btn所在的 GridView Row
                Button btnAddToCart = (Button)sender;
                GridViewRow row = (GridViewRow)btnAddToCart.NamingContainer;

                // 從該藍提資料
                int productID = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                string productName = ((Label)row.FindControl("Label2")).Text;
                // 價格
                int productPrice = 0;
                if (int.TryParse(((Label)row.FindControl("Label3")).Text, out int price))
                {
                    productPrice = price;
                }
                //數量 沒填 亂填例外 全預設1 
                int quantity = 1;
                TextBox stQuantity = (TextBox)row.FindControl("stQuantity");
                if (!string.IsNullOrEmpty(stQuantity.Text))
                {
                    quantity = Convert.ToInt32(stQuantity.Text);
                }


                // 如果庫存 = 0 &&  庫存<欲買數量
                int availableQuantity = GetProductLeftQuantity(productID);
                if (availableQuantity <= 0)
                {
                    
                    btnAddToCart.Enabled = false;
                    ShowAlert("商品庫存已售罄");
                }
                else if (quantity > availableQuantity)
                {
                    //lblDebugInfo.Text = "錯誤：加入購物車數量超過庫存量";
                    ShowAlert("錯誤：加入購物車數量超過庫存量");
                }
                else
                {
                    int userID = GetUserID();
                    AddToShoppingCart(userID, productID, productName, quantity, productPrice);

                }




            }
           catch (Exception ex)
                {
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                    "alert",
                    "alert('錯誤：您尚未登入');",
                    true);
            }
            

            

            // [ex]重新sync表格 
        }

        private int GetUserID()
        {
            int userID = int.Parse(Request.Cookies["UserInfoCookie"].Values["UserId"]);
            return userID; 
        }

        private int GetOrCreateShoppingCartID(int userID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // 檢查user是否存在購物車 存在則沿用 反之創建
                string checkCartQuery = "SELECT TOP 1 c_id FROM ShoppingCart WHERE u_id = @userID";
                using (SqlCommand checkCmd = new SqlCommand(checkCartQuery, connection))
                {
                    checkCmd.Parameters.AddWithValue("@userID", userID);

                    object result = checkCmd.ExecuteScalar();

                    if (result != null)
                    {
                        return Convert.ToInt32(result);
                    }
                    else
                    {
                        string createCartQuery = "INSERT INTO ShoppingCart (u_id) VALUES (@userID); SELECT SCOPE_IDENTITY()";
                        using (SqlCommand createCmd = new SqlCommand(createCartQuery, connection))
                        {
                            createCmd.Parameters.AddWithValue("@userID", userID);
                            object newCartID = createCmd.ExecuteScalar();


                            if (newCartID != null)
                            {
                                return Convert.ToInt32(newCartID);
                            }
                            else
                            {
                                throw new Exception("test74");
                            }
                        }
                    }
                }
            }
        }

        private void AddToShoppingCart(int userID, int productID, string productName, int quantity, int? productPrice)
        {
            // 用userID提購物車ID
            int cartID = GetOrCreateShoppingCartID(userID);

            lblDebugInfo.Text = $"已成功將 <{productName}> 加入購物車, 數量: {quantity}, 價格: {productPrice}";
            //ShowAlert($"已成功將 {productName} 加入購物車, 數量: {quantity}, 價格: {productPrice}");
            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // 插入到CartDetail
                string insertQuery = "INSERT INTO CartDetail (c_id, p_id, p_quantity, p_Name, p_price) VALUES (@c_id, @p_id, @p_quantity, @p_Name, @p_price)";

                using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                {
                    cmd.Parameters.AddWithValue("@c_id", cartID);
                    cmd.Parameters.AddWithValue("@p_id", productID);
                    cmd.Parameters.AddWithValue("@p_quantity", quantity);
                    cmd.Parameters.AddWithValue("@p_Name", productName);
                    cmd.Parameters.AddWithValue("@p_price", productPrice.Value);


                    cmd.ExecuteNonQuery();
                }
            }
        }



        protected void ddlTypeFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = ddlTypeFilter.SelectedValue;
            ddlTypeFilter.DataBind();
            ddlTypeFilter.Items.Insert(0, new ListItem("顯示所有類別", ""));
            ddlTypeFilter.SelectedValue = selectedValue;

            // 重新sync GridView
            BindGridView();
        }

        protected void btnApplyFilter_Click(object sender, EventArgs e)
        {
            BindGridView();
        }

        private void BindGridView()
        {
            string typeFilter = ddlTypeFilter.SelectedValue;
            decimal? minPrice = null;
            decimal? maxPrice = null;




            if (!string.IsNullOrEmpty(txtMinPrice.Text))
            {
                minPrice = Convert.ToDecimal(txtMinPrice.Text);
            }

            if (!string.IsNullOrEmpty(txtMaxPrice.Text))
            {
                maxPrice = Convert.ToDecimal(txtMaxPrice.Text);
            }

            string selectQuery = "SELECT [p_id], [p_name], [p_left], [p_price], [p_type] FROM [Product] WHERE 1 = 1";

            if (!string.IsNullOrEmpty(typeFilter))
            {
                selectQuery += $" AND [p_type] = '{typeFilter}'";
            }

            if (minPrice.HasValue)
            {
                selectQuery += $" AND [p_price] >= {minPrice}";
            }

            if (maxPrice.HasValue)
            {
                selectQuery += $" AND [p_price] <= {maxPrice}";
            }

            string productNameFilter = stPNameText.Text;

            if (!string.IsNullOrEmpty(productNameFilter))
            {
                selectQuery += $" AND [p_name] LIKE '%{productNameFilter}%'";
            }

            SqlDataSource1.SelectCommand = selectQuery;
            SqlDataSource1.DataBind();

            GridView1.DataBind();
        }

        private int GetProductLeftQuantity(int productID)
        {
            int leftQuantity = 0;

            string connectionString = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT [p_left] FROM [Product] WHERE [p_id] = @productID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@productID", productID);
                    connection.Open();

                    var result = command.ExecuteScalar();
                    if (result != null && result != DBNull.Value)
                    {
                        leftQuantity = Convert.ToInt32(result);
                    }
                }
            }

            return leftQuantity;
        }

        private void ShowAlert(string message, string redirectUrl = null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{message}');{(redirectUrl != null ? $"window.location = '{redirectUrl}';" : "")}", true);
        }
    }



}
