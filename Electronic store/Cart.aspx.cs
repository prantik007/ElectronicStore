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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            string uname = Session["username"].ToString();

            SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
            con.Open();

            string str = "select Purl,Ptitle,Pprice from products where Pid IN(select Pid from cart where Uid IN(select Uid from users where uname='" + uname + "'))";

            SqlDataAdapter sda = new SqlDataAdapter(str, con);

            DataSet ds = new DataSet();

            sda.Fill(ds);

            GridView1.DataSource = ds;
            
            GridView1.DataBind();

            str= "select SUM(Pprice) from products where Pid IN(select Pid from cart where Uid IN(select Uid from users where uname='" + uname + "'))";

            SqlCommand cmd = new SqlCommand(str);
            cmd.Connection = con;
            lbl_price.Text = cmd.ExecuteScalar().ToString();


        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

           

            DataSet oDs = (DataSet)GridView1.DataSource;
            oDs.Tables[0].Rows[GridView1.Rows[e.RowIndex].DataItemIndex].Delete();

            
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string uname = Session["username"].ToString();

            SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
            con.Open();

            string str = "select Uid from users where Uname='" + uname + "'";

            SqlCommand cmd = new SqlCommand(str);
            cmd.Connection = con;

            string uid = cmd.ExecuteScalar().ToString();

            str = "delete from cart where Uid='" + uid + "'";

            cmd = new SqlCommand(str);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            Response.Redirect("Cart.aspx");


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}