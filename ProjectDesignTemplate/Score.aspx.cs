using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate
{
    public partial class Score : System.Web.UI.Page
    {
        SoundPlayer soundplayer1 = new SoundPlayer(soundLocation: @"D:\C#\Hmue(C#)\ProjectDesignTemplate\Sound\CONGRATULATION.wav");

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

            per.Text = Session["percentage"].ToString() + "% of your answers is correct ";
            soundplayer1.Play();
        }

        protected void btnRestart_Click(object sender, EventArgs e)
        {
            Session["score"] = null;            //score session remove 
            Session.Remove("score");

            Session["percentage"] = null;
            Session.Remove("percentage");

            soundplayer1.Stop();
            Response.Redirect("Category.aspx");
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            soundplayer1.Stop();

            Session.Remove("questionNumber");
            Session.Remove("score");
            //Page.ClientScript.RegisterOnSubmitStatement(typeof(Page), "ClosePage","window.onunload = ColseWindow();");
            Response.Redirect("home.aspx");
        }
    }
}