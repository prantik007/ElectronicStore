using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Electronic_store
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        
        protected void btn_uploadsubmit_Click(object sender, EventArgs e)
        {
            if (!System.IO.Directory.Exists(Server.MapPath(@"~/product_pictures/")))
            {
                System.IO.Directory.CreateDirectory(Server.MapPath(@"~/product_pictures/"));
            }

            else
            {
                String filePath = Server.MapPath(@"~/product_pictures/" + FU.FileName);
                FU.SaveAs(filePath);
            }



            SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
            con.Open();



            string psid;
            string user = Session["username"].ToString();
            string newcome1 = "select Sid from admin where Sname='" + user + "'";
            SqlCommand cmd1 = new SqlCommand(newcome1, con);
            psid = cmd1.ExecuteScalar().ToString();



            string path = "~/product_pictures/" + FU.FileName;

            string newcom = "insert into products(Ptitle,Pdesc,Pprice,Pcat,Psid,Purl) VALUES ('" + tb_pictitle.Text + "','" + tb_picdesc.Text + "','" + tb_pprice.Text + "','" + DropDownList_category.SelectedValue + "','" + psid + "','" + path + "')";


            SqlCommand cmd = new SqlCommand(newcom, con);


            cmd.ExecuteNonQuery();

            Label3.Visible = true;
            Label3.Text = "Product Uploaded";
        }

       
    }
}