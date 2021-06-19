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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pname = Request.QueryString["name"].ToString();

            SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
            con.Open();

            string newcom = "select Ptitle,Pdesc,Pprice,Purl from products where Ptitle='" + pname + "'";

            SqlDataAdapter adp = new SqlDataAdapter(newcom, con);

            DataSet ds = new DataSet();

            adp.Fill(ds);

            DataTable dt = ds.Tables[0];

            if (dt.Rows.Count >= 1)
            {
                lbl_title.Text= dt.Rows[0][0].ToString();
                Label1.Text = dt.Rows[0][1].ToString();
                lbl_price.Text = dt.Rows[0][2].ToString();
                img_product.ImageUrl = dt.Rows[0][3].ToString();
            }

           

        }

       

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string pname = Request.QueryString["name"].ToString();
            SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
            con.Open();

            string str="select Uid from users where Uname='"+Session["username"].ToString()+"'";

            SqlCommand cmd = new SqlCommand(str);
            cmd.Connection=con;
            string uid = cmd.ExecuteScalar().ToString();                                                              //Get uid

            str = "select Pid from products where Ptitle='" + pname + "'";

            cmd = new SqlCommand(str);
            cmd.Connection = con;
            string pid = cmd.ExecuteScalar().ToString();                                                                  //Get pid 




            str = "insert into cart(Uid,Pid) VALUES ('"+uid+"','"+pid+"')";

            cmd = new SqlCommand(str);

            cmd.Connection = con;
            cmd.ExecuteNonQuery();

           
            con.Close();
        }
    }
}