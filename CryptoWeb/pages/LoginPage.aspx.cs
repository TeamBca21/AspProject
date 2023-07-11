using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;


namespace CryptoWeb.pages
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string email, pass;
        string conStr = constants.Constant.conStr;
        string selectStr = constants.Constant.selectEmailPassQuery;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            LoginTheUser(email, pass);
        }

        private void LoginTheUser(string email, string pass)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string selectStr = "SELECT email,pass FROM RegTable WHERE email = @email AND pass = @pass";
                using (SqlCommand cmd = new SqlCommand(selectStr, con))
                {
                    cmd.Parameters.AddWithValue("@email", etEmailLogin.Text.ToString());
                    cmd.Parameters.AddWithValue("@pass", etPassLogin.Text);
                    con.Open();
                   // try
                  //  {
                    object result = cmd.ExecuteScalar();
                    int count;

                    if (result != null && int.TryParse(result.ToString(), out count))
                    {
                        if (count > 0)
                        {
                            txtResult1.Visible = true;
                            txtResult1.ForeColor = Color.Green;
                            txtResult1.Text = "Login Successfully...";
                        }
                        else
                        {
                            txtResult1.Text = "DOne";
                        }
                       
                    }
                    else
                    {
                        txtResult1.Text = "Error !!!";
                    }
                    txtResult1.Text = "Bahar";

                       
                    }
                   // catch (Exception ex)
                   // {
                       // txtResult1.Visible = true;
                       // txtResult1.ForeColor = Color.Red;
                        //txtResult1.Text = "User Not Found !!! -> " + ex.Message;
                   // }
                //}
            }
        }


        protected void txtGotoLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pages/RegistrationPage.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}