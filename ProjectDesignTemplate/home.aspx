<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectDesignTemplate.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz For Genius!</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="home/css/home1.css" />
        <link rel="stylesheet" href="home/vendor/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="home/vendor/animate_it/animate.css" />
        <link rel="icon" href="img/"sizes="32x32" type="image/png" />
</head>
    <style>
        .hr{
                width:200px;height:7px;margin:0px auto;
            }
    </style>
<body>
    <form id="form1" runat="server">
        <header class="container-fluid navigation animate__animated animate__slideInDown">
                <div class="container">
                    <div class="row">
                        <div class="col-12 position-sticky top-0">
                            <nav class=" navbar navbar-expand-lg  navbar-light "style="height:100px">
                                    <a class="navbar-brand" id="logo" href="#">
                                       <div><img src="img/quizlogo.png" style="width:130px" /></div>
                                       <div id="BrandName"><span></span></div>
                                    </a>
                                        <button class="navbar-toggler border-0 startbtn" >
                                            <i class="fas fa-bars fa-2x menu-icon"></i>
                                        </button>
                
                                        <div class="collapse navbar-collapse justify-content-end contentBox" id="navbarSupportedContent">
                                            <ul class="navbar-nav">
                                                <li class="nav-item">
                                                    <a class="nav-link text-uppercase" href="#home">Home</a> 
                                                </li>
                
                                                <li class="nav-item">
                                                    <a class="nav-link text-uppercase" href="#about">About</a>
                                                </li>
                                                

                                                <li class="nav-item">
                                                    <a class="nav-link text-uppercase" href="#contact">Contact</a>
                                                </li>

                                                <li class="nav-item">
                                                    <asp:HyperLink ID="HyperLink1" class="nav-link text-uppercase " Text="Game" runat="server" NavigateUrl="~/Category.aspx" />
                                                
                                                </li>
                                                <li class="nav-item">
                                                    <asp:HyperLink ID="HyperLink2" class="nav-link text-uppercase " Text="Admin" runat="server" NavigateUrl="~/Admin/login.aspx" />
                                                </li>
                
                                            </ul>
                                        </div>
                                
                            </nav>
                        </div>
                    </div>
                </div>
    </header>
    <section class="container-fluid  align-items-center d-flex home max-height" id="home">
        <div class="container">
            <div class="row margin margin-top">
                
                <div class="col-12 col-md-6 my-5   ">
                    <div class="wow animate__animated animate__slideInRight">
                        <img src="img/quiz2.jpg" alt="" class="svg-home w-100">
                    </div>
                </div>
                <div class="col-12 col-md-6 d-flex align-items-center ">
                    <div class=" wow animate__animated animate__slideInLeft" >
                        <h4>Welcome !</h4>
                        <h1 class=" fw-bolder">Are You A Genius?</h1>
                        <p class=" text-black-50 ">There are more geniuses out there
                            than most people realize. Are you someone who has
                             an intellectual capacity that spans wider than most? 
                             Take this quiz to find out how much of a genius you are!
                        </p>
                        <asp:Button ID="StartQuiz" runat="server" Text="Start Quiz" OnClick="StartQuiz_Click" CssClass=" btn btn-md w-25 btn-primary ms-0 me-0"/>                
                    </div>
                </div>
            </div>
            <div class="row d-none d-xl-block">
                <div class="col-12 d-flex justify-content-center align-items-center">
                    <a href="#about"><div class="mouse-up-down position-absolute border d-flex align-items-center justify-content-md-center" style="width:77px; height:77px; border-radius:50%; bottom: 45px; box-shadow:0px 10px 16px -8px rgba(0,0,0,0.85);">
                        <img src="img/mouse.svg" alt="" class="object" />
                        
                    </div></a>
                </div>
            </div>
    </section>

    <section class=" container-fluid   align-items-center d-flex mt-md-4" id="about"style="height: 700px !important;" >
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6">
                   <div class="w-100 wow animate__animated animate__slideInLeft">
                        <img src="img/group.jpg" alt="" class="w-100">
                   </div>
                        
                </div>
                <div class="col-12 col-md-6 d-flex align-items-center second-pg ">
                    <div class="w-100 wow animate__animated animate__slideInRight">
                        <h4 class=" text-secondary">Our Biography</h4>
                        <h1 class="">Who We Are </h1>
                        <p class="text-black-50">
                            We are attending University of Computer Studies (Monywa). Our major is Computer Science.We created this project
                            for people who interested in playing quizzes an for people who want to be challenge about their knowledge level.
                            Because Quiz games can improve concentration, identify knowledge gaps, boost confidence, and help retain information.
                        </p>
                        <p class="text-black-50">Launched at : 18/8/2023</p>
                        <p class="text-black-50">
                            <h4 class="">Member List</h4>
                            <ul class="text-black-50">
                                <li>Hein Htet Aung (Leader)</li>
                                <li>Hmue Satt San</li>
                                <li>Thet Aung Zin</li>
                                <li>Phyo Thiri Kyaw</li>
                                <li>Ingyin San</li>
                            </ul>
                        </p>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    
   
    <section class="mt-lg-5 contact h-100vh" id="contact">
        <svg width="1939" height="90" viewBox="0 0 1939 90" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect width="1939" height="90" fill="white" />
            <path d="M0 90V0L1223.88 90H0Z" fill="#252934" />
            <path d="M1938.88 0L715 90H1938.88V0Z" fill="#252934" />
        </svg>
        <div class="container w-50">
            <div class="row mb-5">
                <div class="col-12 text-center mt-3 fw-bolder">
                    <h1 class="head wow animate__animated animate__slideInLeft">Contact</h1>
                    <div class="hr bg-white wow animate__animated animate__slideInRight"></div>
                    <p class="mt-5 wow animate__animated animate__slideInRight" style="color: #04c2c9;">Have a question
                        or want to work together..</p>
                </div>
            </div>
            <div class="row mt-5 justify-content-center">

                <form action="" class="col-xl-6 col-lg-10 col-sm-12 animate__animated animate__zoomIn ">
                    <div class=" form-group">
                        <input type="text" class=" form-control border-3 mb-3" placeholder="Name">
                    </div>
                    <div class=" form-group">
                        <input type="text" class=" form-control border-3 mb-3" placeholder="Email Address">
                    </div>
                    <div class=" form-group">
                        <input type="text" class=" form-control border-3 mb-3" placeholder="Phone Number">
                    </div>
                    <div class=" form-group">
                        <textarea name="" id="" cols="30" rows="7" placeholder="Message"
                            class="px-3 border-3 form-control mb-3 rounded-2 py-2 w-100"></textarea>
                    </div>
                    <div class="form-group d-flex justify-content-end">
                        <a href="" class="btn btn-outline-light">Send Message</a>
                    </div>
                </form>


            </div>


    </section>
    <footer class="p-2">
        <div class="up">
            <a href="#home"> <i class="fas fa-angle-double-up text-white"></i></a>
        </div>
        <div class="d-flex justify-content-around">
        </div>
        <div class="info-box mt-lg-3">
            <div class="footnote text-capitalize text-white-50" style="color:white;">
                <span class="highLight font">Copyright © QuizForGenius 2023</span>
                <span class="highLight font">All Right Served</span>
            </div>
        </div>
    </footer>
    
    </form>

    <script src="home/vendor/jquery/dist/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="home/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="home/vendor/wow/wow.min.js"></script>
    <script src="home/vendor/waypoint/lib/jquery.waypoints.min.js"></script>
    <script src="home/js/home1.js"></script>
</body>
</html>
