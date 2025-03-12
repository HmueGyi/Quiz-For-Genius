<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bootHome.aspx.cs" Inherits="ProjectDesignTemplate.bootHome" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <form runat="server" style="background-color:#c5e3f6">
        
   
      <div class="row gutters">
            <div class="container">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 logo p-1 d-flex align-items-center justify-content-center">
                           <h5 class="mb-0"> <img src="img/quiz-logo.png" width="180px"/></h5>
                        </div>
                        <div class="col-md-8 bg-transparent d-flex align-items-center justify-content-center sticky-top" style="color:black">   
                       <div class="col" style="padding-top:5px; font-size:larger;"><asp:HyperLink ID="HyperLink1" class="menuLinks " Text="Home" runat="server" NavigateUrl="~/bootHome.aspx"></asp:HyperLink></div>
                        <div class="col"style="padding-top:5px; font-size:larger;"><asp:HyperLink ID="habout" class="menuLinks " Text="About" runat="server" NavigateUrl="~/about.aspx"></asp:HyperLink></div>
                        <div class="col"style="padding-top:5px; font-size:larger;"><a href="#Ref" class="menuLinks ">Reference</a></div>
                        <div class="col"style="padding-top:5px; font-size:larger;"><asp:HyperLink ID="game" class="menuLinks " Text="Game" runat="server" NavigateUrl="~/Category.aspx"></asp:HyperLink></div>
                        <div class="col"style="padding-top:5px; font-size:larger;"><a href="#Contact" class="menuLinks ">Contact us</a></div>
                        <div class="col"style="padding-top:5px; font-size:larger;"><asp:HyperLink ID="HyperLink2" class="menuLinks " Text="Login" runat="server" NavigateUrl="~/Login.aspx"></asp:HyperLink></div>
                    </div>
                    </div>
                </div>
            <div class="row">
                <div class="col-12 ">
                <section id="home" class="screenHeight">
                    <div class="HomeContent">
                        <div class="img w-50">
                            <img src="img/quiz7.jpg" alt="" width="100%" height="100%"/>
                          
                        </div>
                        <div class="desc">
                            <h2>Are You A Genius?</h2>
                            <div>
                                There are more geniuses out there
                                 than most people realize. Are you someone who has
                                  an intellectual capacity that spans wider than most? 
                                  Take this quiz to find out how much of a genius you are!
                            </div>
                            <div class="d-flex flex-column mt-5 ">
                                <asp:Button ID="StartQuiz" runat="server" Text="Start Quiz" OnClick="StartQuiz_Click" CssClass=" btn btn-md w-25 btn-primary ms-0 me-0"/>                
                            </div>
                            </div>
                        </div>
                        
                </section>
                
            
            </div>
            </div>

          </div>
            
           
          </div>
        
    
        </form>
    <script src="vendor/jquery/dist/jquery.min.js"></script>
    <script src="vendor/waypoint/lib/jquery.waypoints.min.js"></script>
    <script src="js/app.js"></script>
</body>
</html>
