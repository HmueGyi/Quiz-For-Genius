<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="ProjectDesignTemplate.Admin.dashboard" %>

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
    </style>
</head>
<body>
    
    <div class="container-fluid">
        <div class="row no-gutters">
            <div class="col-6 col-md-2 bg-primary vh-100 d-flex align-items-center justify-content-center sticky-top flex-column" >
               
                <div class="links d-flex flex-column">
                    <a href="dashboard.aspx" class="menuLinks  text-white text-decoration-none border">Home</a>
                    <a href="addcategory.aspx" class="menuLinks  text-white text-decoration-none">Add Category</a>
                    <a href="Addquiz.aspx" class="menuLinks  text-white text-decoration-none">Add Question</a>
                   
                    <a href="SelectCategory.aspx" class="menuLinks  text-white text-decoration-none " >Edit Question</a>
                    <a href="../home.aspx" class="menuLinks  text-white text-decoration-none btn btn-outline-danger text-white " >Log Out</a>
                    
                </div>
               
            </div>
            <div class="col-12 col-sm-6 col-md-10 overflow-scroll">
                <form id="form1" runat="server">
               <section>
                   <h3 class="mt-5 mb-5">Question Lists</h3>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-bordered table-condensed table-response table-hover ">
                           <Columns>
                               <asp:BoundField DataField="qname" HeaderText="Question " SortExpression="qname" />
                               <asp:BoundField DataField="ans1" HeaderText="Answer1 " SortExpression="ans1" />
                               <asp:BoundField DataField="ans2" HeaderText="Answer2 " SortExpression="ans2" />
                               <asp:BoundField DataField="ans3" HeaderText="Answer3 " SortExpression="ans3" />
                               <asp:BoundField DataField="ans4" HeaderText="Answer4 " SortExpression="ans4" />
                               <asp:BoundField DataField="correct" HeaderText="correct_Answer" SortExpression="correct" />
                               <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                               <asp:BoundField DataField="level" HeaderText="Level" SortExpression="level" />
                           </Columns>
                       </asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [qname], [ans1], [ans2], [ans3], [ans4], [correct], [category], [level] FROM [quiz] Order By category"></asp:SqlDataSource>
                        
                  
                </section>
                     </form>
            </div>
           
          </div>
        
    </div>
       
    <script src="vendor/jquery/dist/jquery.min.js"></script>
    <script src="vendor/waypoint/lib/jquery.waypoints.min.js"></script>
    <script src="js/app.js"></script>
    
    
</body>
</html>


