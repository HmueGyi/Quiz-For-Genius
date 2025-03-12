using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate.admin
{
    public partial class Deletequiz : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();



        protected void Page_Load(object sender, EventArgs e)
        {
            // Response.Write("ကိုကို့ကိုပပပပပ");


            if (Session["category"] != null)
            {
                var ChooseCategory = Session["category"].ToString();
            }
            if (Session["level"] != null)
            {
                var ChooseLevel = Session["level"].ToString();
            }
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\Hmue(C#)\ProjectDesignTemplate\ProjectDesignTemplate\App_Data\Data.mdf;Integrated Security=True");

            conn.Open();
            if (deleteGridView == null)
            {
                //Response.Write("hello");
            }


        }

        protected void okclk(object sender, EventArgs e)
        {
            /*string my = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
           try{

              using (SqlConnection sqlCon = new SqlConnection(my))
              { */




        }






        protected void deleteClick(object sender, EventArgs e)
        {



            /* DataTable dt1 = new DataTable();
            
             da = new SqlDataAdapter(cmd1);
             DataTable dt = new DataTable();
          


             deleteGridView.DataSource = dt;
             deleteGridView.DataBind();
         */
        }

        protected void deleteGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void del_btn_Click(object sender, EventArgs e)
        {



            /*  string query1 = "delete from quiz where qid=8";
              SqlCommand comm = new SqlCommand(query1, conn);
              da = new SqlDataAdapter(comm);
              DataTable dt = new DataTable();
              da.Fill(dt);
              deleteGridView.DataSource = dt;
              deleteGridView.DataBind();
              ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully deleted');", true);
              */
            conn.Close();
            // Response.Redirect("Deletequiz.aspx");
        }





        public static string aspx { get; set; }

        public object ChooseCategory { get; set; }

        
    }
}