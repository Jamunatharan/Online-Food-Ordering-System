<%@ Page Title="" Language="C#" MasterPageFile="~/masterCustom.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="StyleSheets/StyleSheetpayment.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <div style="width: 90%; margin-left: 5%; margin-right: 5%; background-color: white; min-height: 100vh;">
        <div style="max-width: 900px; margin: auto; background-color: #dae0dd;" align="center">
            <div class="processfuntopadd">Address<span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px; padding-right: 5px; font-size: 20px;"></span></div>
            <div class="processfuntoppay">Payment<span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px; padding-right: 5px; font-size: 20px;"></span></div>
            <div class="processfuntopcon">Confirmation<span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px; padding-right: 5px; font-size: 20px;"></span></div>
        </div>
        <div></div>
        <div style="max-width: 900px; margin: auto; text-align: left" align="center" runat="server" id="Div2">
            <h4>Payment</h4>
            <div style="max-width: 900px; margin: auto; text-align: left;" align="center">
                <div>
                    <div style="background-color: #ffd24f; margin-bottom: 10px; margin-left:10px; width: 200px; padding-top: 7px; padding-bottom: 5px; padding-left: 20px; padding-right: 20px; display: inline-block;">
                        <asp:RadioButton ID="creditcardradiobtn" GroupName="paymenttype" Text="Credit or Debit Card" runat="server" AutoPostBack="True" Checked="True"></asp:RadioButton>
                    </div>
                    <div style="display: inline-block;">
                        <div style="display: inline-block;">
                            <img src="images/Visa-icon.png" style="width: 60px; height: 60px;" />
                        </div>
                        <div style="display: inline-block;">
                            <img src="images/Master-Card.png" style="width: 60px; height: 60px;" />
                        </div>

                    </div>
                </div>
                <div>
                    <div style="background-color: darkcyan; margin-bottom: 10px; margin-left: 10px; display: inline-block; width: 200px; padding-top: 7px; color: white; padding-bottom: 5px; padding-left: 20px; padding-right: 20px;">
                        <asp:RadioButton ID="paypalradiobtn" GroupName="paymenttype" Text="PayPal" runat="server" AutoPostBack="True" OnCheckedChanged="paypalradiobtn_CheckedChanged"></asp:RadioButton>
                    </div>
                    <div style="display: inline-block;">
                        <div style="display: inline-block;">
                            <img src="images/paypal.png" style="width: 60px; height: 60px;" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div style="max-width: 900px; margin: auto; text-align: left; border: 1px solid #dae0dd; padding: 10px;" align="center">
            <div style="max-width: 500px; margin: auto; padding-left: 10px; padding-right: 10px; padding-bottom: 20px;" runat="server" align="center" id="creditcartdiv">
                <div style="text-align: left; margin: 10px;">
                    <div>
                        Card number&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="CartNoValidation" runat="server" ControlToValidate="Cardno" CssClass="alert-danger" ErrorMessage="Card number is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator id="cartnoonly" ControlToValidate="Cardno" CssClass="alert-danger" ValidationExpression="\d+" Display="Static" EnableClientScript="true" ErrorMessage="Please enter numbers only" runat="server"/>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="Cardno" CssClass="cardholdnametxtbox" MaxLength="19"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: left; margin: 10px;">
                    <div>
                        Name on the card&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="CardHolderName" runat="server" ControlToValidate="Nameoncardtxtbox" CssClass="alert-danger" ErrorMessage="Card holder name is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div>

                        <asp:TextBox runat="server" ID="Nameoncardtxtbox" CssClass="cardholdnametxtbox" Text=""></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: left; margin: 10px;">
                    <div>
                        Expiry date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RangeValidator ID="CardExpiryYear" runat="server" ControlToValidate="expiryyear" CssClass="alert-danger" ErrorMessage="Select expiry year" MaximumValue="2050" MinimumValue="2018" Type="Integer"></asp:RangeValidator>
                        <asp:RangeValidator ID="CardExpityMonth" runat="server" ControlToValidate="expirymonth" CssClass="alert-danger" ErrorMessage="Select expiry month" MaximumValue="12" MinimumValue="01" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>

                    </div>
                    <div>
                        <asp:DropDownList runat="server" ID="expirymonth" CssClass="expiredatedrop">
                            <asp:ListItem>Month</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList runat="server" ID="expiryyear" CssClass="expiredatedrop">
                            <asp:ListItem>Year</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>
                <div style="text-align: left; margin: 10px;">
                    <div>
                        Security Code&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="CardSecurityCode" runat="server" ControlToValidate="securitycode" CssClass="alert-danger" ErrorMessage="Three digit security code is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" ControlToValidate="securitycode" CssClass="alert-danger" ValidationExpression="\d+" Display="Static" EnableClientScript="true" ErrorMessage="Please enter numbers only" runat="server"/>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="securitycode" CssClass="securitycode" Text="" MaxLength="4" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Button runat="server" Text="Cancel" CssClass="paymentcancelbutton" ID="paymentcancel" /><asp:Button runat="server" Text="Pay Now" CssClass="paymentbutton" ID="paymentsubmitBtn" OnClick="paymentsubmitBtn_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

