using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate
{
    public partial class Timeup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["score"] == null)
            {
                Session["score"] = 0;
            }
            if (Session["percentage"] == null)
            {
                Session["percentage"] = 0;
            }
            Result.Text = Session["score"].ToString();

            per.Text = Session["percentage"].ToString();

            Result.Text = "Your Score is : " + Session["score"].ToString()+" out of 10";

            per.Text = " ";

        }

        protected void btntryAgain_Click(object sender, EventArgs e)
        {
            Session.Remove("questionNumber");
            Session.Remove("score");
            Response.Redirect("quiz.aspx");
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

    }
}