using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate.Admin
{
    public partial class addcategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void Upload(object sender, EventArgs e)
        {



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void BindGridView()
        {

        }

        protected void okbtn_Click(object sender, EventArgs e)
        {

        }

        protected void btninsert_CLick(object sender, EventArgs e)
        {
            string cat = txtcategory.Text;
            string img = choose.FileName;

            if (choose.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(choose.FileName);
                    string path = Server.MapPath("~/img/") + fileName;

                    choose.SaveAs(path);

                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\Hmue(C#)\ProjectDesignTemplate\ProjectDesignTemplate\App_Data\Data.mdf;Integrated Security=True");
                    conn.Open();
                    string query = "insert into category(category,image) values(@c,@i)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@c", cat);
                    cmd.Parameters.AddWithValue("@i", img);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Session["category"] = txtcategory.Text;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully added');", true);
                    txtcategory.Text = "";

                }
                catch (Exception ex)
                {
                    // Error handling
                    Response.Write("Error: " + ex.Message);
                    // statusLabel.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                Response.Write("Please choose a file to upload.");
            }


            Response.Redirect("newcategoryques.aspx");

        }

        protected void txtcategory_TextChanged(object sender, EventArgs e)
        {

        }

       
    }
}