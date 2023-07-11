<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeWeb.aspx.cs" Inherits="CryptoWeb.HomeWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="form-group">
        </div> 
         <div class="form-group">
            <label for="etName">Enter Name:</label>
            <asp:TextBox ID="etName" runat="server" CssClass="form-control"  ></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="etEmail">Enter Email Address:</label>
            <asp:TextBox ID="etEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="etPass">Enter Password:</label>
            <asp:TextBox ID="etPass" runat="server" CssClass="form-control" Wrap="true" AutoPostBack="false"></asp:TextBox>
        </div>
        <div class="form-group">
       
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" OnClick="btnSubmit_Click" BackColor="#00CC66" BorderColor="#33CCCC" />
        </br>
         <asp:Label ID="txtError" runat="server" Text="" Visible="false"></asp:Label>
    </div>
        </div>
</form>


    </body>
</html>
