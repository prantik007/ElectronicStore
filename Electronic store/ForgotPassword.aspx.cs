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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_1.Visible = false;
            lbl_2.Visible = false;
            Button3.Visible = false;
            tb_seca.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
            con.Open();

            string cmd = "select secq from users where Uname='" + TextBox1.Text + "'";

            SqlDataAdapter sda = new SqlDataAdapter(cmd, con);

            DataTable dt = new DataTable();

            sda.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                Button2.Visible = false;
                Button3.Visible = true;

                TextBox1.Visible = false;

                lbl_uname.Text = dt.Rows[0]["Secq"].ToString();

                tb_seca.Visible = true;
            }

            else
            {
                lbl_1.Text = "Incorrect User";
                lbl_1.Visible = true;
            }

        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT Secq,Seqa,Pwd FROM users WHERE Uname='" + TextBox1.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            if (String.Compare(tb_seca.Text, dr["Seqa"].ToString()) == 0)
            {
                lbl_1.Visible = true;
                lbl_2.Visible = true;
                lbl_1.Text = "Your Password is :";
                lbl_2.Text = dr["Pwd"].ToString();
                lbl_uname.Visible = false;

            }
            else
            {

                lbl_1.Visible = true;
                lbl_1.Text = "Incorrect Answer!!";
            }
            con.Close();
        }


    }
}