using System;
using System.Data.SqlClient;


namespace CryptoWeb
{
    public partial class HomeWeb : System.Web.UI.Page
    {
        string conStr = @"Data Source=DESKTOP-0PL26OM\SQLEX;Initial Catalog=Tufel_db;Integrated Security=True";
        int id;
        string name, email, pass, confirmPass;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            name = etName.Text;
            email = etEmail.Text;
            pass = etPass.Text;

            txtError.Visible = true;
            txtError.ForeColor = System.Drawing.Color.Red;

            if (name == "")
            {
                txtError.Text = "Please enter your name";
            }
            else if (email == "")
            {
                txtError.Text = "Please enter email address";
            }
            else if (pass == "")
            {
                txtError.Text = "Please enter your password";
            }
            else if (pass.Length < 8 || pass.Length > 12)
            {
                txtError.Text = "Password must be between 8 and 12 characters";
            }

            else
            {
                addDataToDataBase1(name, email, pass);

            }
        }

        private void addDataToDataBase1(string name, string email, string pass)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    con.Open();

                    string query = "INSERT INTO Table_1 (name, email, pass) VALUES (@name, @email, @pass)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@pass", pass);
                        cmd.ExecuteNonQuery();
                    }

                    con.Close();
                }

                txtError.ForeColor = System.Drawing.Color.Green;
                txtError.Text = "Saved Successfully...";
            }
            catch (Exception ex)
            {
                txtError.Text = ex.Message.ToString();

            }
        }

        protected void btnUpdate_click(object sender, EventArgs e)
        {

        }
    }
}
