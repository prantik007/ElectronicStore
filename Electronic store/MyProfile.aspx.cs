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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            MultiView1.ActiveViewIndex = -1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            string uname = Session["username"].ToString();

            SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
            con.Open();

            string str = "Select Ptitle, Pprice, Purl,orders.Oid from Shopping.dbo.products join Shopping.dbo.orders on orders.Puid = products.Pid Where Uid = (select Uid from users where Uname='" + uname + "')";

            SqlDataAdapter sda = new SqlDataAdapter(str, con);

            DataSet ds = new DataSet();

            sda.Fill(ds);

            GridView1.DataSource = ds;

            GridView1.DataBind();
        }

        
    }
}