using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate
{
    public partial class Game : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Chooselevel_click(object sender, EventArgs e)
        {
            string level = ((Button)sender).Text;
            Session["levelid"] = level;
            Response.Redirect("quiz.aspx");
        }

      
    }
}