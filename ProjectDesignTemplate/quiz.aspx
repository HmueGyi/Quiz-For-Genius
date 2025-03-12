<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="ProjectDesignTemplate.quiz" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/Bubblestyle.css">
   
</head>
<body>
    <form runat="server">
       
    <div class="container-fluid">
           
        <div class="row no-gutters">
            <div class="col-6 col-md-2  vh-100 d-flex flex-column align-items-center justify-content-center sticky-top bg-info">
                <div class="links">
                    
                    <!-- <a href="#home" class  ="menuLinks border">Home</a> -->
                  
                    <!-- <a href="#about" class="menuLinks " >About</a>
                    <a href="#Ref" class="menuLinks ">Reference</a>
                    <a href="#Game" class="menuLinks ">Game</a>

                    <a href="#Contact" class="menuLinks ">Contact us</a> -->
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-10 placeHoderContainer">
                  <div class="d-flex  w-100 justify-content-end">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server"></asp:Timer>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="d-flexx w-100 h-50 justify-content-end">
                                <asp:Label ID="Label1" runat="server" Text="Time :" Font-Size="25px" Font-Bold="true" ForeColor="Red" ></asp:Label>
                                <asp:Label ID="Time" runat="server" Text="120" Font-Size="25px" Font-Bold="true" ForeColor="Red" ></asp:Label><asp:Label ID="Label2" runat="server" Text=" Seconds" Font-Size="20px" Font-Bold="true" ForeColor="Red"></asp:Label>
                            </div>     
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                 <div class="bubbles">
                     <asp:Image ID="Image1" ImageUrl="img/bubble.jpg" runat="server" />
		             <asp:Image ID="Image2" ImageUrl="img/bubble.png" runat="server" />
                      <asp:Image ID="Image3" ImageUrl="img/bubble.png" runat="server" />
                      <asp:Image ID="Image4" ImageUrl="img/bubble.png" runat="server" />
                      <asp:Image ID="Image5" ImageUrl="img/bubble.png" runat="server" />
                      <asp:Image ID="Image6" ImageUrl="img/bubble.png" runat="server" />
                      <asp:Image ID="Image7" ImageUrl="img/bubble.png" runat="server" />
                 </div>

                <div class="justify-content-center"><h2><%Response.Write("Quiz For "+Session["categoryid"]); %></h2></div>
                 
                <div class="placeHolder w-100 h-75 text-dark">
                                    
              <div id="quiz-container " class="d-flex justify-content-center align-items-center h-100 flex-column">

             <div class="questions w-75 h-75 ">
                    <div class="d-flex" >
                        
                        <h4 style="margin-left:2px;align-items:start;"><b><asp:Label ID="Label3" runat="server" Text="NO:" Font-Size="30px" ForeColor="blue"></asp:Label></b></h4>
                         <h4 style="margin-left:2px;align-items:start;"><b><asp:Label ID="numcount" runat="server" Text="1" Font-Size="30px" ForeColor="blue"></asp:Label></b></h4>
                        
                            <h4 id="question" style="margin-left:2em;"><b><asp:Label ID="qname" runat="server"></asp:Label></b></h4>
                     </div>
                     <ol type="A">
                           <div class="container mt-5">
                               <div class=" w-100 row ">
               
                                <div class="col-6">

                                    <li class="option"><asp:Button ID="Ans1" class=" btn  btn-lg btn-outline-info text-dark me-5 mb-3" runat="server" OnClick="correct_click" width="300px"></asp:Button></li>
                                     <li class="option"><asp:Button ID="Ans2" class=" btn btn-lg  btn-outline-info text-dark me-5 mb-3" runat="server" OnClick="correct_click" width="300px"></asp:Button></li>
                                </div>                
                                <div class="col-6">
                                    <li class="option"><asp:Button ID="Ans3" class=" btn btn-lg  btn-outline-info text-dark me-5 mb-3" runat="server" OnClick="correct_click" width="300px"></asp:Button></li>
                                     <li class="option"><asp:Button ID="Ans4" class=" btn btn-lg  btn-outline-info text-dark me-5 mb-3"  runat="server" OnClick="correct_click" width="300px"></asp:Button></li>
                        
                                       
                                    </div>
                                     <div class="row w-100 ">
                                          <div>
                                                   <p class="option d-flex justify-content-center"> <asp:Button ID="next" class="offset-sm-0 btn p-2 h-25 btn btn-info" runat="server" Text="Next" Onclick="btnAns_click" width="210px" Enabled="false" Visible="false" /></p>
                                            </div> 
                                     </div>
                                 </div>   
                               </div>      
                           </div>
                        </ol>
                           
                      </div>
                   
                      </div>
               
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



