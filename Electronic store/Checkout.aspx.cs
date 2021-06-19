using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Electronic_store
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label5.Visible = false;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(TextBox3.Text=="" ||TextBox4.Text==""||TextBox2.Text=="")
            {
                Label5.Visible = true;
                Label5.Text = "Enter all payment details.";
            }
            else
            {
                string uname = Session["username"].ToString();

                SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
                con.Open();

                string str = "select Uid from users where uname='" + uname + "'";

                SqlCommand cmd = new SqlCommand(str);
                cmd.Connection = con;

                string uid = cmd.ExecuteScalar().ToString();

                str = "insert into orders(Uid,Puid) select Uid,Pid from cart where Uid='" + uid + "'";

                cmd = new SqlCommand(str);
                cmd.Connection = con;

                cmd.ExecuteNonQuery();


                str = "delete from cart where Uid='" + uid + "'";
                cmd = new SqlCommand(str);
                cmd.Connection = con;

                cmd.ExecuteNonQuery();

                Response.Redirect("MyProfile.aspx");




            }

        }

        
    }
}