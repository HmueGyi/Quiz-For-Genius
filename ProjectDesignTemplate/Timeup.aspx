<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timeup.aspx.cs" Inherits="ProjectDesignTemplate.Timeup" %>

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
             <h2 style="color:red;font-size:4rem;text-shadow: 0 0 10px;">Time Up!</h2>
         <br /><br />
        <h2> <asp:Label ID="Result" runat="server" Text="Score"></asp:Label></h2><br />
         <h2><asp:Label ID="per" runat="server" Text="Percentage"></asp:Label></h2><br />
 <table>
     <tr>
         <td style="width:200px">
             <asp:Button ID="btntryAgain" runat="server" class="cate btn btn-outline-primary" Font-Size="25px" Text="Tryagain" onclick="btntryAgain_Click" Height="50px" BackColor="Gray" ForeColor="White" />
 
         </td>
         <td style="width:200px"> 
             <asp:Button ID="ExitRestart" runat="server" class="cate btn btn-outline-primary" Font-Size="25px" Text="GoHome" onclick="btnExit_Click" Height="50px" BackColor="Gray" ForeColor="White" />
         </td>
     </tr>
 </table>
    </div>
</form>
</body>
</html>
