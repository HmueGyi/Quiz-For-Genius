<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectDesignTemplate.loginadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link rel="stylesheet" href="~/vendor/bootstrap/css/bootstrap.min.css"/>  
    <title></title>
    <style>
        *{
            padding:0px;
            margin:0px;
            box-sizing:border-box;
        }
        .gover{
            height:100vh;
            background-image: radial-gradient(circle at 67% 83%, hsla(317,0%,96%,0.05) 0%, hsla(317,0%,96%,0.05) 1%,transparent 1%, transparent 5%,transparent 5%, transparent 100%),radial-gradient(circle at 24% 80%, hsla(317,0%,96%,0.05) 0%, hsla(317,0%,96%,0.05) 27%,transparent 27%, transparent 63%,transparent 63%, transparent 100%),radial-gradient(circle at 23% 5%, hsla(317,0%,96%,0.05) 0%, hsla(317,0%,96%,0.05) 26%,transparent 26%, transparent 82%,transparent 82%, transparent 100%),radial-gradient(circle at 21% 11%, hsla(317,0%,96%,0.05) 0%, hsla(317,0%,96%,0.05) 35%,transparent 35%, transparent 45%,transparent 45%, transparent 100%),radial-gradient(circle at 10% 11%, hsla(317,0%,96%,0.05) 0%, hsla(317,0%,96%,0.05) 21%,transparent 21%, transparent 81%,transparent 81%, transparent 100%),radial-gradient(circle at 19% 61%, hsla(317,0%,96%,0.05) 0%, hsla(317,0%,96%,0.05) 20%,transparent 20%, transparent 61%,transparent 61%, transparent 100%),radial-gradient(circle at 13% 77%, hsla(317,0%,96%,0.05) 0%, hsla(317,0%,96%,0.05) 63%,transparent 63%, transparent 72%,transparent 72%, transparent 100%),radial-gradient(circle at 30% 93%, hsla(317,0%,96%,0.05) 0%, hsla(317,0%,96%,0.05) 33%,transparent 33%, transparent 82%,transparent 82%, transparent 100%),linear-gradient(90deg, rgb(22, 176, 207),rgb(103, 7, 215));
        }
        .Loggy{
           background: rgba( 13, 120, 130, 0.25 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 10.5px );
            -webkit-backdrop-filter: blur( 10.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
        }

    </style>
</head>
<body>
        <form id="form" runat="server">
            <div class="gover w-100 d-flex justify-content-center align-items-center flex-column">
                <div class="header text-white mb-3">
                    <h2>Admin Login</h2>
                </div>
              <div class="w-25 h-50 d-flex justify-content-center flex-column form-control Loggy">
                 <div class="username mb-3">
                 <label class="text-white">Username</label>
                      <asp:TextBox ID="uname_txt"  runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
                ControlToValidate="uname_txt" ErrorMessage="Please Enter Your Username"   
                ForeColor="Red"></asp:RequiredFieldValidator> 
            </div> 
            <div class="passwor mb-3">
                 <label class="text-white">Password</label>
                  <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
                    ControlToValidate="txtPassword" ErrorMessage="Please Enter Your Password"   
                    ForeColor="Red"></asp:RequiredFieldValidator>  
            </div>
            <div class="w-100 d-flex justify-content-center">
                <asp:Button ID="loginbtn" Text="Login" runat="server" OnClick="loginbtn_Click" CssClass="btn btn-outline-light btn-lg w-50" />
            </div>
            </div>
            </div>

            
        </form>
<!-- partial -->
  
</body>
</html>
