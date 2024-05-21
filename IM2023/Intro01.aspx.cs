using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IM2023
{
    public partial class Intro01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            try
            {
                
                if (Request.Cookies["UserInfoCookie"] != null) //cookie
                {
                    string username = Request.Cookies["UserInfoCookie"].Values["Username"];
                    string uid = Request.Cookies["UserInfoCookie"].Values["UserId"];
                    WelText_UserName.Text = username;
                    Label1.Text = "[DEBUG]cookie" + ",id:" + uid;
                }
                else //Session
                {
                    WelText_UserName.Text = Session["u_id"].ToString();
                    Label1.Text = "[DEBUG]SessionTest uid";
                }

            }
            catch (Exception ee)
            {
                Label1.Text = "[FBI WARNING!!!]" + ee.Message.ToString();

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Cookies.Remove("UserInfoCookie");
            //Response.Redirect("intro01.aspx");
        }
    }
}