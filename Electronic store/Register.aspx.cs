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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            lbl_regerror.Visible = false;
            
        }

        protected void register_Click(object sender, EventArgs e)
        {
            
            
                    SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
                    con.Open();

                    string newcom = "select uname from users where uname='" + tb_uname.Text + "'";

                    SqlDataAdapter adp = new SqlDataAdapter(newcom, con);

                    DataSet ds = new DataSet();

                    adp.Fill(ds);

                    DataTable dt = ds.Tables[0];

                    if (dt.Rows.Count >= 1)
                    {
                        lbl_regerror.Text = "User ID already exists";
                        lbl_regerror.Visible = true;
                        
                    }

                    else
                    {
                        SqlConnection con1 = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
                        con1.Open();

                        string ipaddress;
                        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                        if (ipaddress == "" || ipaddress == null)
                        { ipaddress = Request.ServerVariables["REMOTE_ADDR"]; }

                        DateTime today = DateTime.Today;
                        string today_date = today.ToString("dd/MM/yyyy");

                        string newcom1 = "insert into users(Uname,Pwd,Fname,Lname,Addr,Email,Cntno,Secq,Seqa,Uip,Ldate) VALUES ('" + tb_uname.Text + "','" + tb_pwd.Text + "','" + tb_fname.Text + "','" + tb_lname.Text + "','" + tb_addr.Text + "','" + tb_email.Text + "','" + tb_cntno.Text + "','" + DropDownList1.SelectedItem.Text + "','" + tb_seqa.Text + "','" + ipaddress + "','" + today + "')";

                        SqlCommand cmd = new SqlCommand(newcom1, con1);

                        cmd.ExecuteNonQuery();

                        lbl_regerror.Text = "Registration done";
                        lbl_regerror.Visible = true;

                        tb_addr.Text = ""; tb_cntno.Text = ""; tb_email.Text = ""; tb_fname.Text = ""; tb_lname.Text = ""; tb_pwd.Text = ""; tb_rpwd.Text = ""; tb_seqa.Text = ""; tb_uname.Text = "";

                        MultiView1.ActiveViewIndex = -1;
                        con1.Close();
                    }
                }

         

       

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList3.SelectedValue=="User Registration")
            {
                MultiView1.SetActiveView(View1);
            }
            if (DropDownList3.SelectedValue == "Seller Registration")
            {
                MultiView1.SetActiveView(View2);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label1.Visible = true;
                Label1.Text = "Please fill all fields.";
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=WIN-N7E01I1QGEM\SQLEXPRESS;Initial Catalog=Shopping;Integrated Security=True;User ID=sa,Password=12345");
                con.Open();

                string str = "insert into admin(Sname,Sdesc,Stype,ismanager) VALUES('" + TextBox1.Text + "','" + DropDownList2.SelectedValue + "','" + TextBox2.Text + "','0')";

                SqlCommand cmd = new SqlCommand(str, con);

                cmd.ExecuteNonQuery();

                Label1.Text = "Registration done";
                Label1.Visible = true;
            }
            MultiView1.ActiveViewIndex = -1;

        }
    }
    }
