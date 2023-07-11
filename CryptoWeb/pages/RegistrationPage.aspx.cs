using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace CryptoWeb
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        string conStr = constants.Constant.conStr;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-Q37V3LA;Initial Catalog=TufelDB1;Integrated Security=True");
        string insertStr = "INSERT INTO RegTable (name,email,pass) VALUES (@name,@email,@pass)";

        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

       
        protected void btnReg_Click(object sender, EventArgs e)
        {
            string name = etNameReg.Text.ToString();
            string email = etEmailReg.Text.ToString();
            string pass = etPassReg.Text.ToString();
            string confPass = etConPassReg.Text.ToString();

            addDataToDatabase(name, email, pass);

        }
       protected void txtGotoLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pages/LoginPage.aspx");
        }


       private void addDataToDatabase(string name, string email, string pass)
       {
           using (SqlConnection con = new SqlConnection(conStr))
           {
               using (SqlCommand cmd = new SqlCommand(insertStr, con))
               {
                   cmd.Parameters.AddWithValue("@name", name);
                   cmd.Parameters.AddWithValue("@email", email);
                   cmd.Parameters.AddWithValue("@pass", pass);

                   try
                   {
                       con.Open();
                       cmd.ExecuteNonQuery();
                       txtResult.Visible = true;
                       txtResult.ForeColor = Color.Green;
                       txtResult.Text = "Data Inserted Successfully";
                       con.Close();

                   }
                   catch (Exception ex)
                   {
                       txtResult.Visible = true;
                       txtResult.ForeColor = Color.Red;
                       txtResult.Text = "Getting Error !!!  ->"+ex.ToString();
                   }
               }
           }

       }

    }
}