using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_store
{
    public partial class Web : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["username"]==null)
            {
                lbl_user.Text = "Guest";
                btn_logout.Visible = false;
                btn_myprofile.Visible = false;
              

            }
            else
            {
                lbl_user.Text = Session["username"].ToString();
                btn_login.Visible = false;
                btn_logout.Visible = true;
                btn_myprofile.Visible = true;
            }

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Home.aspx");
        }

        protected void btn_cart_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void btn_myprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyProfile.aspx");
        }
    }

    
}