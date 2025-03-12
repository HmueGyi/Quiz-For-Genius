<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Score.aspx.cs" Inherits="ProjectDesignTemplate.Score" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/style.css">
        <link rel="stylesheet" href="Congratulation design/style.css" type="text/css" />
    <title></title>   
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-13 col-sm-9 col-md-10 placeHoderContainer" style="width:600px;height:400px";>
             <p>Congratulations!</p>
            <br /><br />
           <h2> <asp:Label ID="Result" runat="server" Text="Score"></asp:Label></h2><br />
            <h2><asp:Label ID="per" runat="server" Text="Percentage"></asp:Label></h2><br />
            <table>
                <tr>
                    <td style="width:200px">
                        <asp:Button ID="BtnRestart0" runat="server" class="cate btn btn-outline-primary" Font-Size="25px" Text="Restart" onclick="btnRestart_Click" Height="50px" BackColor="Gray" ForeColor="White" />
            
                    </td>
                    <td style="width:200px"> 
                        <asp:Button ID="ExitRestart" runat="server" class="cate btn btn-outline-primary" Font-Size="25px" Text="GoHome" onclick="btnExit_Click" Height="50px" BackColor="Gray" ForeColor="White" />
                    </td>
                </tr>
            </table>

             
    <script src="Congratulation design/confetti.js"></script>
    <!-- Confetti  JS-->
    <script>

        // start

        const start = () => {
            setTimeout(function() {
                confetti.start()
            }, 1800); // 2000 is time that after 1 second start the confetti ( 1000 = 1 sec)
        };

        //  Stop

        const stop = () => {
            setTimeout(function() {
                confetti.stop()
            }, 11000); // 5000 is time that after 5 second stop the confetti ( 5000 = 5 sec)
        };

        start();
        stop();
    </script>
        </div>
    </form>
</body>
</html>
