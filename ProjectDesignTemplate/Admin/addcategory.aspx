<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="ProjectDesignTemplate.Admin.addcategory" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                 <a href="addcategory.aspx" class="menuLinks  text-white text-decoration-none border">Add Category</a>
                 <a href="Addquiz.aspx" class="menuLinks  text-white text-decoration-none">Add Question</a>
    
                 <a href="SelectCategory.aspx" class="menuLinks  text-white text-decoration-none " >Edit Question</a>
                 <a href="../home.aspx" class="menuLinks  text-white text-decoration-none btn btn-outline-danger text-white " >Log Out</a>
     
             </div>
               
            </div>
    <div class="col-12 col-sm-6 col-md-10 ">
               <section class="d-flex justify-content-center align-items-center">
                  <div class="container cardContainer">
                <div class="row d-flex justify-content-center">
                    <div class="col-12 col-lg-12">
                        <div class=" card">
                            <div class="card-body">
                                 <div class="headerSection d-flex justify-content-between align-items-center">
                                     <div class="logo d-inline-flex align-items-center">
                                         <i class=" feather-plus-circle text-primary" style=" font-size:1.5em"></i>
                                         <h4 class=" mb-0 ms-2">Add Category </h4>
                                     </div>
                                 <div>
                                    
                                 </div>
                                 </div>
                                 <hr>
   <form id="form1" runat="server">
        <div class="form-group ">
             <div>
     <asp:Label ID="lblcategory" runat="server" Text="Category" CssClass="form-label mb-2 text-secondary"></asp:Label>
     
     <asp:TextBox ID="txtcategory" runat="server" OnTextChanged="txtcategory_TextChanged" CssClass="form-control"></asp:TextBox>
    
            
         <br />
                 <div class="row mb-3">
                     <div class="col-12">
                         <asp:Label ID="lblfile" runat="server" Text="Choose Photo" CssClass="form-label mb-2 text-secondary"></asp:Label>
                         <asp:FileUpload ID="choose" runat="server" CssClass="mb-2 form-control"/>
                     </div>
                 </div>
     
     
     

     <div class="w-100 d-flex justify-content-center">
         <asp:Button ID="btninsert" runat="server" Text="Insert" OnClick="btninsert_CLick" CssClass="btn btn-primary"/>
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
</body>
</html>


 