using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Media;
using System.Reflection.Emit;
using System.Security.Cryptography.X509Certificates;
using System.Timers;
using System.Reflection;
using System.Drawing.Drawing2D;

namespace ProjectDesignTemplate
{
    public partial class quiz : System.Web.UI.Page
    {
       // SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\Hmue(C#)\ProjectDesignTemplate\ProjectDesignTemplate\App_Data\Data.mdf;Integrated Security=True");

        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\Hmue(C#)\ProjectDesignTemplate\ProjectDesignTemplate\App_Data\Data.mdf;Integrated Security=True");
        SoundPlayer soundplayer = new SoundPlayer(soundLocation: @"D:\C#\Hmue(C#)\ProjectDesignTemplate\Sound\CORRECT.wav");
        SoundPlayer soundplayer2 = new SoundPlayer(soundLocation: @"D:\C#\Hmue(C#)\ProjectDesignTemplate\Sound\WRONG.wav");

        private int qnum;
        string correctAnswer;
        int questionNum = 0;
        int score;
        int percentage;
        static int totalQuestions;
        static int total = 10;

        public class Data
        {
            public int qid { get; set; }
            public string qname { get; set; }
            public string ans1 { get; set; }
            public string ans2 { get; set; }
            public string ans3 { get; set; }
            public string ans4 { get; set; }
            public string corr { get; set; }
        }
        //for qid in question table
        protected List<Data> list()
        {
           

            conn.Open();
            string second = Session["levelid"].ToString();
            string cate = Session["categoryid"].ToString();

            string query2 = "select * from quiz where category=@c and level=@s";
            SqlCommand cmd2 = new SqlCommand(query2, conn);
            cmd2.Parameters.AddWithValue("@s", second);
            cmd2.Parameters.AddWithValue("@c", cate);
            SqlDataReader dr = cmd2.ExecuteReader();

            List<Data> questionNumbers = new List<Data>();
            while (dr.Read())
            {
                Data ques = new Data
                {

                    qid = Convert.ToInt32(dr["qid"]),
                    qname = dr["qname"].ToString(),
                    ans1 = dr["ans1"].ToString(),
                    ans2 = dr["ans2"].ToString(),
                    ans3 = dr["ans3"].ToString(),
                    ans4 = dr["ans4"].ToString(),
                    corr = dr["correct"].ToString()
                };
                questionNumbers.Add(ques);
                
            }

            totalQuestions = questionNumbers.Count();

            dr.Close();
            conn.Close();
            return questionNumbers;
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            


            if (Session["questionNumber"] == null)
            {
                Session["questionNumber"] = 0;
            }
            if (!IsPostBack)
            {
                List<Data> questionNumbers = list();
                var randomlsit = questionNumbers.OrderBy(a => Guid.NewGuid()).ToList();
                questionNumbers = randomlsit;
                Session["list"] = questionNumbers;
                askQuestion(questionNum);
                
            }


            Timer1.Enabled = true;
            Timer1.Interval = 1000;
            Timer1.Tick += new EventHandler<EventArgs>(Timer1_Trick);
            
        }
        void Timer1_Trick(object sender,EventArgs e)
        {
            int t = (Convert.ToInt16(Time.Text));
            t -= 1;
            Time.Text = t.ToString();
            if (t < 0)
            {  
                Timer1.Enabled=false;
                Response.Redirect("Timeup.aspx");
            }

        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }
        public void askQuestion(int qnum)
        {
            

            Ans1.BackColor = System.Drawing.Color.Transparent;
            Ans2.BackColor = System.Drawing.Color.Transparent;
            Ans3.BackColor = System.Drawing.Color.Transparent;
            Ans4.BackColor = System.Drawing.Color.Transparent;

            conn.Open();
            List<Data> questionNumbers = (List<Data>)Session["list"];

            if (qnum < 10)
            {

                for (int j = 0; j <= questionNumbers.Count; j++)
                {
                    qname.Text = questionNumbers[qnum].qname;//display question 

                    Ans1.Text = questionNumbers[qnum].ans1;
                    Ans2.Text = questionNumbers[qnum].ans2;
                    Ans3.Text = questionNumbers[qnum].ans3;
                    Ans4.Text = questionNumbers[qnum].ans4;

                    correctAnswer = questionNumbers[qnum].corr;
                   
                }
            }
            else
            {
                RestartQuizz();

            }

            Session["correct"] = correctAnswer;
            
        }

        public void RestartQuizz()
        {
            if (score >= 5)
            {
                score = 0;
                questionNum = 0;

                Session["questionNumber"] = null;   //question counter session remove
                Session.Remove("questionNumber");

                Response.Redirect("Score.aspx");
            }
            else
            {
                score = 0;
                questionNum = 0;

                Session["questionNumber"] = null;   //question counter session remove
                Session.Remove("questionNumber");

                Response.Redirect("Lessscore.aspx");
            }
        }


        protected void btnAns_click(object sender, EventArgs e)
        {
            int currentNumber =Convert.ToInt32(numcount.Text);
            currentNumber++;
            numcount.Text = currentNumber.ToString();   
            
            Ans1.Enabled = true;
            Ans2.Enabled = true;
            Ans3.Enabled = true;
            Ans4.Enabled = true;


            score = Convert.ToInt32(Session["score"]);
            if (Session["questionNumber"] != null)
            {
                questionNum = Convert.ToInt32(Session["questionNumber"].ToString());
            }

            if (questionNum == total - 1)
            {
                percentage = (int)Math.Round((double)(score * 100) / total);
                Session["percentage"] = percentage;
            }
            else
            {
                score = 0;
            }

            questionNum++;
            Session["questionNumber"] = questionNum;

            askQuestion(questionNum);
            next.Visible = false;   
        }

        
        protected void correct_click(object sender, EventArgs e)
        {
            

            var senderObject = (Button)sender;
            string id = (senderObject.ID).ToString();
            if (Session["score"] != null)
            {
                score = Convert.ToInt32(Session["score"]);
            }
            string buttonIndex = (senderObject.Text).ToString();
            correctAnswer = Session["correct"].ToString();
            string a = Ans1.Text.ToString();


            if (buttonIndex == correctAnswer) //correct answers
            {
                soundplayer.Play();
                score++;
                //Response.Write(score);
                Session["score"] = score;
                if (id == "Ans1")
                {
                    Ans1.BackColor = System.Drawing.Color.Green;

                }
                if (id == "Ans2")
                {
                    Ans2.BackColor = System.Drawing.Color.Green;
                }
                if (id == "Ans3")
                {
                    Ans3.BackColor = System.Drawing.Color.Green;
                }
                if (id == "Ans4")
                {
                    Ans4.BackColor = System.Drawing.Color.Green;
                }


            }
            else
            {
                soundplayer2.Play();    

                if (id == "Ans1")
                {
                    Ans1.BackColor = System.Drawing.Color.Red;

                }
                else if (id == "Ans2")
                {
                    Ans2.BackColor = System.Drawing.Color.Red;
                }
                else if (id == "Ans3")
                {
                    Ans3.BackColor = System.Drawing.Color.Red;
                }
                else
                {
                    Ans4.BackColor = System.Drawing.Color.Red;
                }
                if (Ans1.Text == correctAnswer)
                {
                    Ans1.BackColor = System.Drawing.Color.Green;
                }

                if (Ans2.Text == correctAnswer)
                {
                    Ans2.BackColor = System.Drawing.Color.Green;
                }

                if (Ans3.Text == correctAnswer)
                {
                    Ans3.BackColor = System.Drawing.Color.Green;
                }

                if (Ans4.Text == correctAnswer)
                {
                    Ans4.BackColor = System.Drawing.Color.Green;
                }

            }
            
            Ans1.Enabled = false;
            Ans1.CssClass = ("btn  btn-lg btn-outline-info text-dark me-5 mb-3");

            Ans2.Enabled = false;
            Ans2.CssClass = ("btn  btn-lg btn-outline-info text-dark me-5 mb-3");

            Ans3.Enabled = false;
            Ans3.CssClass = ("btn  btn-lg btn-outline-info text-dark me-5 mb-3");

            Ans4.Enabled = false;
            Ans4.CssClass = ("btn  btn-lg btn-outline-info text-dark me-5 mb-3");

            next.Visible = true;    
            next.Enabled = true;

        }
          
    }
}
