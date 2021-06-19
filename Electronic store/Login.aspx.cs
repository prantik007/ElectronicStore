using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.Common;

namespace Electronic_store
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_error.Visible = false;
        }

        protected void btn_log_Click(object sender, EventArgs e)
        {
            if(chkbx_seller.Checked)
            {
                SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
                con.Open();

                string newcom = "select Sname from admin where Sname='" + uname.Text+"'";

                SqlDataAdapter adp = new SqlDataAdapter(newcom, con);

                DataSet ds = new DataSet();

                adp.Fill(ds);

                DataTable dt = ds.Tables[0];

                if (dt.Rows.Count >= 1 && pwd.Text=="seller")
                {

                    Session["username"] = uname.Text;
                    Response.Redirect("upload_test.aspx");
                }

                else
                {
                    lbl_error.Text = "Invalid Credentials";
                    lbl_error.Visible = true;
                }

            }

            if (uname.Text=="admin" && pwd.Text=="admin")
            {
                Session["username"] = "Admin";
                Response.Redirect("Admin.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
                con.Open();

                string newcom = "select uname from users where uname='" + uname.Text + "' and pwd='" + pwd.Text + "'";

                SqlDataAdapter adp = new SqlDataAdapter(newcom, con);

                DataSet ds = new DataSet();

                adp.Fill(ds);

                DataTable dt = ds.Tables[0];

                if (dt.Rows.Count >= 1)
                {

                    Session["username"] = uname.Text;
                    Response.Redirect("Home.aspx");
                }

                else
                {
                    lbl_error.Text = "Invalid Credentials";
                    lbl_error.Visible = true;
                }
            }
        }

        protected void link_forgot_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}