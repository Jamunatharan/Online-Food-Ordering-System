<%@ Page Title="" Language="C#" MasterPageFile="~/masterCustom.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="StyleSheets/Login.css" type="text/css" />
    <div class="loginPage">
    <div class="loginMainC">
        <div class="logintablecontainer" align="center">
            <div class="loginmaintable" align="center">

                <div class="logintableheading" >Sign in</div>


                <div class="logintablerow"></div>


                <div class="logintablerow">
                    <asp:Label ID="lablEmailnotCorrct" runat="server" CssClass="lblemanotcrt" Height="16px"></asp:Label>
                </div>

                <div class="logintablerow">
                    <asp:TextBox ID="loginemailtxtbox" runat="server" placeholder="Email address" CssClass="loginemailtxt"></asp:TextBox>
                </div>

                <div class="logintablerow">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="loginemailtxtbox" CssClass="loginvalidatemsgs" ErrorMessage="* Invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Style="color: #FF0000"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginemailtxtbox" CssClass="loginvalidatemsgs" ErrorMessage="* Email address is required" Style="color: #FF0000"></asp:RequiredFieldValidator>
                </div>

                <div class="logintablerow">
                    <asp:Label ID="lblpassnotcrt" runat="server" CssClass="lblemanotcrt"></asp:Label>
                </div>

                <div class="logintablerow">
                    <asp:TextBox ID="loginpasstxtbox" runat="server" placeholder="Password" CssClass="loginemailtxt" TextMode="Password" MaxLength="10"></asp:TextBox>
                </div>

                <div class="logintablerow">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginpasstxtbox" CssClass="loginvalidatemsgs" ErrorMessage="* Password is required" Style="color: #FF0000"></asp:RequiredFieldValidator>
                </div>

                <div class="logintablerow">
                    <asp:Button ID="Regibtn" runat="server" Text="LOGIN" CssClass="loginbtn" OnClick="Login_Click" />
                </div>

                <div class="logintablerow">

                </div>

                <div class="LinkBtnContainer" style="text-align:center; margin:10px;">
                    <asp:LinkButton ID="DontHaveaccount" runat="server" OnClick="DontHaveaccount_Click" CausesValidation="False" CssClass="DontHaveAccountBtn">Do not have an account?</asp:LinkButton><asp:LinkButton ID="Forgotpassword" runat="server" CssClass="ForgotPassBtn">Forgot your password?</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>







