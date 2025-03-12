using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate.admin
{
    public partial class SelectCategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\Hmue(C#)\ProjectDesignTemplate\ProjectDesignTemplate\App_Data\Data.mdf;Integrated Security=True");
        // SqlCommand cmd;
        // SqlDataAdapter da;

        List<string> catarr = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            // fiildrop();
            con.Open();
            string s = "select distinct category from quiz";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                catarr.Add(dr.GetValue(0).ToString());
                // Response.Write(dr["category"]);

            }


        }


        protected void okclk(object sender, EventArgs e)
        {


            Session["category"] = cateDropDown.SelectedValue;

            Session["level"] = lvlDropDown.SelectedValue;
            Response.Redirect("../admin/Deletequiz.aspx");


        }

       
    }
}