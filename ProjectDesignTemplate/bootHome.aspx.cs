using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate
{
    public partial class bootHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StartQuiz_Click(object sender, EventArgs e)
        {
            Response.Redirect("Category.aspx");
    }
    }
}