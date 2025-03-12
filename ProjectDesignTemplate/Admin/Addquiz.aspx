<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addquiz.aspx.cs" Inherits="ProjectDesignTemplate.admin.Addquiz" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head >
    <title></title>
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css"/> 
<style>
      
        .links{
                width: 88%;
                height: 60%;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
            }
            .menuLinks{
                height: 25%;
                width: 100%;
                justify-content: center;
                display: flex;
                align-items: center;
                margin-bottom: 20px;
   
            }
            .menuLinks.border{
                border: 1px solid white !important;
                border-radius: 17px !important;
            }
            .cardContainer{
                height:100vh;
                display:flex;
                justify-content:center;
                align-items:center;
            }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row no-gutters">
            <div class="col-6 col-md-2 bg-primary vh-100 d-flex align-items-center justify-content-center sticky-top flex-column" >
               
                 <div class="links d-flex flex-column">
                 <a href="dashboard.aspx" class="menuLinks  text-white text-decoration-none ">Home</a>
                 <a href="addcategory.aspx" class="menuLinks  text-white text-decoration-none">Add Category</a>
                 <a href="Addquiz.aspx" class="menuLinks  text-white text-decoration-none border" >Add Question</a>
    
                 <a href="SelectCategory.aspx" class="menuLinks  text-white text-decoration-none " >Edit Question</a>
                 <a href="../home.aspx" class="menuLinks  text-white text-decoration-none btn btn-outline-danger text-white " >Log Out</a>
     
             </div>
               
            </div>
            <div class="col-12 col-sm-6 col-md-10">
               <section>
                  <div class="container cardContainer">
                <div class="row d-flex justify-content-center">
                    <div class="col-12">
                        <div class=" card">
                            <div class="card-body">
                                 <div class="headerSection d-flex justify-content-between align-items-center">
                                     <div class="logo d-inline-flex align-items-center">
                                         <i class=" feather-plus-circle text-primary" style=" font-size:1.5em"></i>
                                         <h4 class=" mb-0 ms-2">Add Questions </h4>
                                     </div>
                                 <div>
                                   
                                 </div>
                                 </div>
                                 <hr>
                                 <form id="form2" runat="server"> 
                                    
                                    <div class=" form-group">
                                         <div class="row">
                                             <div class="col-12 col-lg-6">
                                                
                                                <div class="mt-2">
                                                     <label for="" class="form-label text-secondary">Question</label>
                                                    <div>
                                                        <asp:TextBox ID="que_txt" runat="server" TextMode="MultiLine" CssClass="form-control" Required Height="200px"></asp:TextBox>
                                                    </div>
                                                   </div>
                                                
                                             </div>
                                             <div class="col-12 col-lg-6">
                                                 <div>
                                                     <label for="" class=" form-label text-secondary d-block">Answers</label>
                                                     <div class="row">
                                                         <div class="col-6"> 
                                                             <asp:TextBox ID="A1txt" runat="server" CssClass="form-control" Required></asp:TextBox>
                                                         </div>
                                                          <div class="col-6">
                                                              <asp:TextBox ID="A2txt" runat="server" CssClass="form-control" Required></asp:TextBox>
                                                         </div>
                                                     </div>
                                                     <div class="row">
                                                         <div class="col-6 mt-2">
                                                             <asp:TextBox ID="A3txt" runat="server" CssClass="form-control" Required></asp:TextBox>
                                                         </div>
                                                          <div class="col-6 mt-2">
                                                             <asp:TextBox ID="A4txt" runat="server" CssClass="form-control" Required></asp:TextBox>
                                                         </div>
                                                     </div>
                                                 </div>
                                                 <div class="correctAns mt-2">
                                                     <label for="" class=" form-label text-secondary d-block" Required>Correct Answer</label>
                                                     <div class="row">
                                                         <div class="col-12"> 
                                                             <asp:TextBox ID="correct_txt" runat="server" CssClass="form-control" Required></asp:TextBox>
                                                         </div>
                                                    </div>
                                                </div>
                                                 <div class="mt-2">
                                                     <label for="" class=" form-label text-secondary d-block">Category</label>
                                                     <asp:DropDownList ID="cateDropDown" runat="server" CssClass="form-control form-select">
                                                            <asp:ListItem Value="Select Category" disabled Selected> </asp:ListItem>
                                                          
                                                      </asp:DropDownList>
                                        
                                                       
                                                     
                                                 </div>
                                                  <div class="mt-2">
                                                     <label for="" class=" form-label text-secondary d-block">Level</label>
                                                       <asp:DropDownList ID="lvlDropDown" CssClass="form-control form-select" runat="server" >
                                                            <asp:ListItem Value="" disabled Selected> Select Level</asp:ListItem>
                                                               <asp:ListItem>Easy</asp:ListItem>
                                                               <asp:ListItem>Medium</asp:ListItem>
                                                               <asp:ListItem>Hard</asp:ListItem>
                                                        </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ErrorMessage="Please choose the level" ControlToValidate ="lvlDropDown" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 </div>
           
                                             </div>
                                    </div>
                                   <div class="row mt-3 justify-content-center">
                                      <div class="col-3">
                                           <div class="footerSection">
                                         <asp:Button runat="server" OnClick="saveclk" Text="Save" id="saveBtn" CssClass="btn btn-primary"></asp:Button>
                                     </div>
                                   </div>
                                    <div class="col-3">
                                        <div class="footerSection">
                                          <asp:Button runat="server" OnClick="cancleclk" Text="Cancel" CssClass="btn btn-warning" ></asp:Button>
                                     </div>
                                    </div>
                                       
                                      
                                   </div>
                                </form>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                </section>
            </div>
           
          </div>
        
    </div>
</body></html>




