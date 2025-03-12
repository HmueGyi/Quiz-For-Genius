<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="ProjectDesignTemplate.Category" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz For Genius!</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="home/css/home1.css" />
    <link rel="stylesheet" href="home/vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="home/vendor/animate_it/animate.css" />
    <link rel="icon" href="img/"sizes="32x32" type="image/png" />
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <form runat="server">
  
              <div class="container-fluid navigation animate__animated animate__slideInDown">
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
                                                    <a class="nav-link text-uppercase " href="home.aspx">Home</a>
                                                </li>
                
                                                <li class="nav-item">
                                                    <a class="nav-link text-uppercase" href="home.aspx/#about">About</a>
                                                </li>
                                               

                                                <li class="nav-item">
                                                    <a class="nav-link text-uppercase" href="home.aspx/#contact">Contact</a>
                                                </li>

                                                <li class="nav-item">
                                                     <asp:HyperLink ID="HyperLink1" class="nav-link text-uppercase createline" Text="Game" runat="server" NavigateUrl="~/Category.aspx" />
 
                                                </li>
                                                <li class="nav-item">
                                                     <asp:HyperLink ID="HyperLink2" class="nav-link text-uppercase " Text="Admin" runat="server" NavigateUrl="~/admin/Login.aspx" />
                                                </li>
                
                                            </ul>
                                        </div>
                                
                            </nav>
                        </div>
                    </div>
                </div>
    </div>
<br /><br /><br /><br /><br />

    </form>
    <script src="vendor/jquery/dist/jquery.min.js"></script>
    <script src="vendor/waypoint/lib/jquery.waypoints.min.js"></script>
    <script src="js/app.js"></script>
    <script src="home/vendor/jquery/dist/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="home/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="home/vendor/wow/wow.min.js"></script>
    <script src="home/vendor/waypoint/lib/jquery.waypoints.min.js"></script>
    <script src="home/js/home1.js"></script>
</body>
</html>
