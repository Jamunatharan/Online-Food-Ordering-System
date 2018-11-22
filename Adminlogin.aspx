<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color:#dae0dd; height:60px; font-size:35px; text-align:left; padding-top:15px; padding-left:20px;">Golden Palace</div> 
            <table align="center" style="margin-top:200px; border:1px solid; padding:50px;">
                <tr>
                    <td style="font-size:24px;">User Name</td>
                    <td><asp:Textbox ID="adminuser" runat="server" Width="350" Height="40"></asp:Textbox></td>
                    </tr>
                    <tr>
                    <td></td>
                    <td><asp:Label runat="server" ID="userwronglbl"></asp:Label></td>
                        </tr>
                    
                <tr>
                    <td style="font-size:24px;">Password</td>
                    <td><asp:TextBox ID="adminpass" runat="server" Width="350" Height="40" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label runat="server" ID="passwronglbl"></asp:Label></td>
                        </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td><asp:Button style="margin-top:30px; font-size:24px;" runat="server" Height="40" Width="350" Text="Sign In" ID="adminsignbtn" OnClick="adminsignbtn_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
