using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate
{
    public partial class loginadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\Hmue(C#)\ProjectDesignTemplate\ProjectDesignTemplate\App_Data\Data.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from admin where username=@username and password=@password", con);

            cmd.Parameters.AddWithValue("@username", uname_txt.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("~/Admin/dashboard.aspx");
            }
            else
            {
                //Label1.Text = "Your username and Password are incorrect";
                // Label1.Text = "Invalid Login, Please Try Again:";

                // Label1.ForeColor = System.Drawing.Color.Red;

            }
        }

        private void ModelErrorMessage(string p)
        {
            throw new NotImplementedException();
        }
    }
}