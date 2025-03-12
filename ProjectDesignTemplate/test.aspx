<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="ProjectDesignTemplate.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style/Bubblestyle.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"></asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                    <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo"></asp:BoundField>      
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ImageTable]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
