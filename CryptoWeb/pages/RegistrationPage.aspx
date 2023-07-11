<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="CryptoWeb.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/RegStyleSheet.css" rel="stylesheet" type="text/css" />
</head>

<body style="background-image:url('../images/bg.jpg'); background-size:cover; ">
    
    <form id="form1" runat="server">
        <h1 id="reg-header">
                Create Your New Account...
        </h1>
    <div>
        <table id="container" >
                <tr>
                <td >
                     <asp:Label ID="Label4" runat="server" Text="Name  :"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="etNameReg" runat="server" ></asp:TextBox >
                  <br />
                </td>
            </tr>
             <tr>
                <td>
                     
                <asp:Label ID="Label1" runat="server" Text="Email Address :"></asp:Label>
                </td>
                <td>
                 <asp:TextBox ID="etEmailReg" runat="server" ></asp:TextBox>
                    </td>
                 <td>
                    </br></br>
                </td>
            </tr>
            <tr>
                <td>


                    <asp:Label ID="Label2" runat="server" Text="Password  :"></asp:Label>
                </td>
                <td>

                    <asp:TextBox ID="etPassReg" runat="server"></asp:TextBox></br></br>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label3" runat="server" Text="Confirm Password  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="etConPassReg" runat="server"></asp:TextBox>
                    </br></br>
                </td>

            </tr>
            <tr>
                 <td rowspan="1" class="auto-style2">
                       <asp:Button ID="btnReg" runat="server"  Text="Register" BackColor="Green" BorderStyle="Inset" Font-Bold="True" Font-Names="Bodoni MT" Font-Overline="False" ForeColor="White" OnClick="btnReg_Click" />    
                  </td>
                  
                    <td rowspan="2" class="auto-style3">
                   <asp:Button ID="txtGotoLogin" runat="server" Text="Already Have Account !" Font-Size="Smaller" OnClick="txtGotoLogin_Click"></asp:Button>
                    </td>  
            </tr>
          </table>
          <asp:Label ID="txtResult" runat="server" Text="Label" Visible="false"></asp:Label>
       
       
          </div>  
    </form>
</body>
</html>
