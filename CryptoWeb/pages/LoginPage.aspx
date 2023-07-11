<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CryptoWeb.pages.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/LoginStyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
   
    
</head>
<body style="background-image:url('../images/bg3.jpeg'); background-size:cover; ">
    <form id="form2" runat="server">
    <div>
        
        <h1 id="header">Welcom Back 2 Crypto Wallet</h1>
    
        <div class="login">
            <table>

                <tr>
                    <td>

                        <asp:Label ID="Label1" runat="server" Text="Email Address :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="etEmailLogin" runat="server"></asp:TextBox></br></br>
                    </td>
                </tr>
                <tr>
                    <td>


                        <asp:Label ID="Label2" runat="server" Text="Password  :"></asp:Label>
                    </td>
                    <td>

                        <asp:TextBox ID="etPassLogin" runat="server"></asp:TextBox></br></br>
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:Label ID="Label3" runat="server" Text="Confirm Password  :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="etConPassLogin" runat="server"></asp:TextBox></br></br>
                    </td>

                </tr>
                <tr>
                    <td rowspan="1">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="Green" BorderStyle="Inset" Font-Bold="True" Font-Names="Bodoni MT" Font-Overline="False" ForeColor="White" OnClick="btnLogin_Click" />
                    </td>
                    <td rowspan="3">
                        <asp:Button ID="txtGotoReg" runat="server" Text="Create New Account !" Font-Size="Smaller" OnClick="txtGotoLogin_Click"></asp:Button>

                    </td>
                </tr>
            </table>
            <asp:Label ID="txtResult1" runat="server" Text="Label" Visible="false"></asp:Label>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TufelDB1ConnectionString %>" SelectCommand="SELECT * FROM [RegTable]"></asp:SqlDataSource>

        </div>
        
       </div>
    </form>
</body>
</html>
