using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate.Admin
{
    public partial class newcategoryques : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveclk(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\Hmue(C#)\ProjectDesignTemplate\ProjectDesignTemplate\App_Data\Data.mdf;Integrated Security=True");
            con.Open();



            string second = lvlDropDown.SelectedItem.Value;


            string q = "insert into quiz (qname,ans1,ans2,ans3,ans4,correct,category,level) values ( @que  , @A1txt, @A2txt, @A3txt , @A4txt ,@correct, @category , @level )";
            SqlCommand amm = new SqlCommand(q, con);
            amm.Parameters.AddWithValue("@que", que_txt.Text);

            amm.Parameters.AddWithValue("@A1txt", A1txt.Text);
            amm.Parameters.AddWithValue("@A2txt", A2txt.Text);
            amm.Parameters.AddWithValue("@A3txt", A3txt.Text);
            amm.Parameters.AddWithValue("@A4txt", A4txt.Text);
            amm.Parameters.AddWithValue("@correct", correct_txt.Text);

            amm.Parameters.AddWithValue("@level", second);
            amm.Parameters.AddWithValue("@category", Session["category"]);
            amm.ExecuteNonQuery();
            con.Close();

            //Response.Write("<script>alert('Successfully Added');</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully added');", true);



            que_txt.Text = "";
            A1txt.Text = "";
            A2txt.Text = "";
            A3txt.Text = "";
            A4txt.Text = "";
            correct_txt.Text = "";



            this.lvlDropDown.ClearSelection();

        }

        protected void cancleclk(object sender, EventArgs e)
        {

        }

       
    }
}