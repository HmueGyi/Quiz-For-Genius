<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="ProjectDesignTemplate.Game" %>

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
    <form runat="server">
    <div class="container-fluid">
        <div class="row no-gutters">
            <div class="col-6 col-md-2  vh-100 d-flex flex-column align-items-center justify-content-center sticky-top bg-info">
                <div class="links">
                    
                    <!-- <a href="#home" class="menuLinks border">Home</a> -->
                    <asp:Button id="Easy" Text="Easy" runat="server" class=" btn menuLinks btn-outline-black" OnClick="Chooselevel_click"></asp:Button>
                     <asp:Button id="Medium" Text="Medium" runat="server" class=" btn menuLinks" OnClick="Chooselevel_click"></asp:Button>
                     <asp:Button id="Hard" Text="Hard" runat="server" class=" btn menuLinks" OnClick="Chooselevel_click"></asp:Button>
                   
                    <!-- <a href="#about" class="menuLinks " >About</a>
                    <a href="#Ref" class="menuLinks ">Reference</a>
                    <a href="#Game" class="menuLinks ">Game</a>

                    <a href="#Contact" class="menuLinks ">Contact us</a> -->
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-10 placeHoderContainer">
                <div class="placeHolder w-75 h-75 d-flex justify-content-center align-items-center text-light">
                    <h3 style="color:black;">
                        <b>Choose the Desired Level of the Question</b>
                    </h3>
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
