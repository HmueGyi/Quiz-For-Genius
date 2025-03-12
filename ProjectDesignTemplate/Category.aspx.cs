using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignTemplate
{
    public partial class Category : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\Hmue(C#)\ProjectDesignTemplate\ProjectDesignTemplate\App_Data\Data.mdf;Integrated Security=True");


        List<PicData> catarr = new List<PicData>();
        public class PicData
        {
            public string cname { get; set; }
            public string img { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string s = "select * from Category";
            SqlCommand cmd = new SqlCommand(s, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                PicData pic = new PicData
                {
                    cname = dr["category"].ToString(),
                    img = dr["image"].ToString(),
                };
                catarr.Add(pic);
            }
            System.Web.UI.HtmlControls.HtmlGenericControl cfluid = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cfluid.Attributes.Add("class", "container-fluid"); 

            System.Web.UI.HtmlControls.HtmlGenericControl containerfirst = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            containerfirst.Attributes.Add("class", "container");

            System.Web.UI.HtmlControls.HtmlGenericControl rowguit = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            rowguit.Attributes.Add("class", "row gutters");

            System.Web.UI.HtmlControls.HtmlGenericControl containersecond = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            containersecond.Attributes.Add("class", "container");

           /* System.Web.UI.HtmlControls.HtmlGenericControl cfluid1 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cfluid1.Attributes.Add("class", "container-fluid");

            System.Web.UI.HtmlControls.HtmlGenericControl rowfirst = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            rowfirst.Attributes.Add("class", "container-fluid");*/

            System.Web.UI.HtmlControls.HtmlGenericControl colfirst = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            colfirst.Attributes.Add("class", "col-md-3 logo p-1 d-flex align-items-center justify-content-center");
            var h5 = new System.Web.UI.HtmlControls.HtmlGenericControl("h5"); 

            h5.Attributes.Add("class", "mb-0");
            System.Web.UI.WebControls.Image img5 = new System.Web.UI.WebControls.Image();
            img5.ImageUrl = "img/quiz-logo.png";
            img5.Style.Add(HtmlTextWriterStyle.Width, "180px");
            
            h5.Controls.Add(img5);
            colfirst.Controls.Add(h5);

            System.Web.UI.HtmlControls.HtmlGenericControl colsecond = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            colsecond.Attributes.Add("class", "col-md-9 bg-transparent d-flex align-items-center justify-content-center sticky-top");
            colsecond.Style.Add(HtmlTextWriterStyle.Color, "black");
            colsecond.Style.Add(HtmlTextWriterStyle.Position, "fixed");
            colsecond.Style.Add(HtmlTextWriterStyle.PaddingTop, "30px");
            

            System.Web.UI.HtmlControls.HtmlGenericControl col1 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            col1.Attributes.Add("class", "col");
            System.Web.UI.HtmlControls.HtmlGenericControl col2 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            col2.Attributes.Add("class", "col");
            System.Web.UI.HtmlControls.HtmlGenericControl col3 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            col3.Attributes.Add("class", "col");

            System.Web.UI.HtmlControls.HtmlGenericControl cols1 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cols1.Attributes.Add("class", "col");
            cols1.Style.Add(HtmlTextWriterStyle.PaddingTop, "20px");
            cols1.Style.Add(HtmlTextWriterStyle.FontSize, "larger");
            HyperLink home = new HyperLink();
            home.Text = "Home";
            home.NavigateUrl = "bootHome.aspx";
            home.Attributes.Add("class", "menuLinks");
            cols1.Controls.Add(home);


            System.Web.UI.HtmlControls.HtmlGenericControl cols2 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cols2.Attributes.Add("class", "col");
            cols2.Style.Add(HtmlTextWriterStyle.PaddingTop, "20px");
            cols2.Style.Add(HtmlTextWriterStyle.FontSize, "larger");
            HyperLink about = new HyperLink();
            about.Text = "About";
            about.NavigateUrl = "about.aspx";
            about.Attributes.Add("class", "menuLinks");
            cols2.Controls.Add(about);

            System.Web.UI.HtmlControls.HtmlGenericControl cols3 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cols3.Attributes.Add("class", "col");
            cols3.Style.Add(HtmlTextWriterStyle.PaddingTop, "20px");
            cols3.Style.Add(HtmlTextWriterStyle.FontSize, "larger");
            HyperLink ref1 = new HyperLink();
            ref1.Text = "Reference";
            ref1.NavigateUrl = "ref.aspx";
            ref1.Attributes.Add("class", "menuLinks");
            cols3.Controls.Add(ref1);

            System.Web.UI.HtmlControls.HtmlGenericControl cols4 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cols4.Attributes.Add("class", "col");
            cols4.Style.Add(HtmlTextWriterStyle.PaddingTop, "20px");
            cols4.Style.Add(HtmlTextWriterStyle.FontSize, "larger");
            HyperLink game = new HyperLink();
            game.Text = "Game";
            game.NavigateUrl = "game.aspx";
            game.Attributes.Add("class", "menuLinks");
            cols4.Controls.Add(game);

            System.Web.UI.HtmlControls.HtmlGenericControl cols5 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cols5.Attributes.Add("class", "col");
            cols5.Style.Add(HtmlTextWriterStyle.PaddingTop, "20px");
            cols5.Style.Add(HtmlTextWriterStyle.FontSize, "larger");
            HyperLink contact = new HyperLink();
            contact.Text = "Contact us";
            contact.NavigateUrl = "contact.aspx";
            contact.Attributes.Add("class", "menuLinks");
            cols5.Controls.Add(contact);

            System.Web.UI.HtmlControls.HtmlGenericControl cols6 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cols6.Attributes.Add("class", "col");
            cols6.Style.Add(HtmlTextWriterStyle.PaddingTop, "20px");
            cols6.Style.Add(HtmlTextWriterStyle.FontSize, "larger");
            HyperLink admin = new HyperLink();
            admin.Text = "Admin";
            admin.NavigateUrl = "admin.aspx";
            admin.Attributes.Add("class", "menuLinks");
            cols6.Controls.Add(admin);
            colsecond.Controls.Add(col1);
            colsecond.Controls.Add(col2);
            colsecond.Controls.Add(col3);
            colsecond.Controls.Add(cols1);
            colsecond.Controls.Add(cols2);
            colsecond.Controls.Add(cols3);
            colsecond.Controls.Add(cols4);
            colsecond.Controls.Add(cols5);
            colsecond.Controls.Add(cols6);
           // rowfirst.Controls.Add(colfirst);
            //rowfirst.Controls.Add(colsecond);
            //cfluid1.Controls.Add(rowfirst);
            //containersecond.Controls.Add(cfluid1);
            rowguit.Controls.Add(containersecond);
            containerfirst.Controls.Add(rowguit);
            cfluid.Controls.Add(containerfirst);
            Form.Controls.Add(cfluid);



            System.Web.UI.HtmlControls.HtmlGenericControl container = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            container.Attributes.Add("class", "container-fluid");

            System.Web.UI.HtmlControls.HtmlGenericControl row = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            row.Attributes.Add("class", "row no-gutters");

            System.Web.UI.HtmlControls.HtmlGenericControl column = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            column.Attributes.Add("class", "col-12 col-sm-6 col-md-12");

            System.Web.UI.HtmlControls.HtmlGenericControl category = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            var h2 = new System.Web.UI.HtmlControls.HtmlGenericControl("h2");
            h2.InnerHtml = "Choose Category";
            h2.Style.Add(HtmlTextWriterStyle.TextAlign, "center");
            h2.Style.Add(HtmlTextWriterStyle.Padding, "20px");
            h2.Style.Add(HtmlTextWriterStyle.MarginBottom, "20px");
            category.Controls.Add(h2);
            column.Controls.Add(category);
            System.Web.UI.HtmlControls.HtmlGenericControl outer = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            outer.Attributes.Add("class", "cates d-flex align-items-center  justify-content-center");


            for (int i = 0; i < catarr.Count; i++)
            {
                if (!Page.ClientScript.IsStartupScriptRegistered("yourKey"))
                {
                    string scriptText1 = "<script type='text/javascript' src='vendor/jquery/dist/jquery.min.js'></script>";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "yourKey", scriptText1);
                    string scriptText2 = "<script type='text/javascript' src='vendor/waypoint/lib/jquery.waypoints.min.js'></script>";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "yourKey", scriptText2);
                    string scriptText3 = "<script type='text/javascript' src='js/app.js'></script>";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "yourKey", scriptText3);
                }


                System.Web.UI.HtmlControls.HtmlGenericControl inner = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                inner.Attributes.Add("class", "cate border-2 p-2 border-dark");
                inner.Style.Add(HtmlTextWriterStyle.Height, "203px");
                inner.Style.Add(HtmlTextWriterStyle.BorderWidth, "1px");
                inner.Style.Add(HtmlTextWriterStyle.BorderStyle, "solid");

                System.Web.UI.WebControls.Image img = new System.Web.UI.WebControls.Image();  //image
                img.ImageUrl = "~/img/" + catarr[i].img.ToString();
                img.Style.Add(HtmlTextWriterStyle.Width, "92%");            
                img.Style.Add(HtmlTextWriterStyle.Height, "90%");
                img.Attributes.Add("class", "mb-2");

                Button b = new Button();                                                    //button
                b.ID = catarr[i].cname.ToString();
                b.Text = catarr[i].cname.ToString();
                b.Style.Add(HtmlTextWriterStyle.FontWeight, "Bold");
                b.Attributes.Add("class", "offset-sm-0 btn p-2 h-25 w-100  btn btn-info");
                b.Click += new EventHandler(Choose_click);

                inner.Controls.Add(img);
                inner.Controls.Add(b);
                outer.Controls.Add(inner);
                column.Controls.Add(outer);
                row.Controls.Add(column);
                container.Controls.Add(row);
                Form.Controls.Add(container);


            }
            dr.Close();
            conn.Close();

        }
        protected void Choose_click(object sender, EventArgs e)
        {
            string category = ((Button)sender).Text;
            Session["categoryid"] = category;
            Response.Redirect("Game.aspx");
        }

    }
}