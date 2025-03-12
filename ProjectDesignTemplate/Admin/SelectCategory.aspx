<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectCategory.aspx.cs" Inherits="ProjectDesignTemplate.admin.SelectCategory" %>

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
    <form runat="server">
        <div class="container-fluid">
    <div class="row no-gutters">
        <div class="col-6 col-md-2 bg-primary vh-100 d-flex align-items-center justify-content-center sticky-top flex-column" >
           
        <div class="links d-flex flex-column">
             <a href="dashboard.aspx" class="menuLinks  text-white text-decoration-none ">Home</a>
             <a href="addcategory.aspx" class="menuLinks  text-white text-decoration-none">Add Category</a>
             <a href="Addquiz.aspx" class="menuLinks  text-white text-decoration-none">Add Question</a>
    
             <a href="SelectCategory.aspx" class="menuLinks  text-white text-decoration-none border" >Edit Question</a>
             <a href="../home.aspx" class="menuLinks  text-white text-decoration-none btn btn-outline-danger text-white " >Log Out</a>
     
         </div>
           
        </div>
<div class="col-12 col-sm-6 col-md-10 ">
           <section class="d-flex justify-content-center align-items-center">
              <div class="container cardContainer">
            <div class="row d-flex justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class=" card">
                        <div class="card-body">
                             <div class="headerSection d-flex justify-content-between align-items-center">
                                 <div class="logo d-inline-flex align-items-center">
                                     <i class=" feather-plus-circle text-primary" style=" font-size:1.5em"></i>
                                     <h4 class=" mb-0 ms-2">Edit Questions </h4>
                                 </div>
                             <div>
                                
                             </div>
                             </div>
                             <hr>

      <div class="row">
          <div class="category">
              <label for="" class=" form-label text-secondary">Choose Category</label>
        <asp:DropDownList ID="cateDropDown" runat="server" CssClass="form-control form-select">
            <asp:ListItem Value="" Text="" disabled Selected> Select Category</asp:ListItem>
             <asp:ListItem>Burmese Riddle</asp:ListItem>
             <asp:ListItem>General Knowledge</asp:ListItem>
            <asp:ListItem>History</asp:ListItem>

             <asp:ListItem>Mathematics</asp:ListItem>
            <asp:ListItem>Nature</asp:ListItem>
            <asp:ListItem>Physics</asp:ListItem>
               <asp:ListItem>Riddle</asp:ListItem>
            <asp:ListItem>Football</asp:ListItem>
            <asp:ListItem>Science</asp:ListItem>
               <asp:ListItem>IT</asp:ListItem>    


          </asp:DropDownList>
          </div>
          <div class="level">
              <label for="" class=" form-label text-secondary">Choose Level</label>
               <asp:DropDownList ID="lvlDropDown" runat="server" CssClass="form-control form-select">
                    <asp:ListItem Value="" selected disable> Select Level</asp:ListItem>
                       <asp:ListItem>Easy</asp:ListItem>
                       <asp:ListItem>Medium</asp:ListItem>
                       <asp:ListItem>Hard</asp:ListItem>
               </asp:DropDownList>
          </div>
      </div>
        <div class="row mt-3 justify-content-center">
            <div class="col-3">
                 <div class="footerSection">
                     <asp:Button runat="server" OnClick="okclk" Text="OK" CssClass="btn btn-primary"></asp:Button>
                 </div>
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
    </form>
    
        

</body>
</html>
