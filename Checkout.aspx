<%@ Page Title="" Language="C#" MasterPageFile="~/masterCustom.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="StyleSheets/StyleSheetCheckout.css" type="text/css" />

    <div style="width: 90%; margin-left: 5%; margin-right: 5%; background-color: white; min-height: 100vh;">
        <div style="max-width: 900px; margin: auto; background-color:#dae0dd;" align="center">
            <div class="processfuntopadd"><div style="display:inline-block;">Address</div><div style="display:inline-block;"><span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 3px; padding-right: 5px; font-size: 20px;"></span></div></div>
            <div class="processfuntoppay">Payment<span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px; padding-right: 5px; font-size: 20px;"></span></div>
            <div class="processfuntopcon">Confirmation<span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px; padding-right: 5px; font-size: 20px;"></span></div>
        </div>
        <div style="max-width: 900px; border-bottom: 1px solid #dae0dd; margin: auto; margin-top: 20px;" align="left">
            <div class="orderTypeC"><h4 style="text-align: left;">ORDER TYPE</h4></div>
            <div style="background-color: #ffd24f; padding-top: 9px; width: 200px; padding-bottom: 5px; margin-bottom:20px; padding-left: 20px; margin-left:10px; margin-right:10px; padding-right: 20px; text-align: left;">
                <asp:RadioButton ID="DeliveryCheckbox" GroupName="ordertype" Text="DELIVERY" runat="server" AutoPostBack="True" OnCheckedChanged="DeliveryCheckbox_CheckedChanged1"></asp:RadioButton>
            </div>
            <div style="background-color: darkcyan; width: 200px; padding-top: 9px; margin-left:10px; margin-right:10px; color: white; padding-bottom: 5px; padding-left: 20px; padding-right: 20px; margin-bottom:20px; text-align: left;">
                <asp:RadioButton ID="TakeawayCheckbox" GroupName="ordertype" Text="TAKEAWAY" runat="server" OnCheckedChanged="TakeawayCheckbox_CheckedChanged" AutoPostBack="True"></asp:RadioButton>
            </div>

        </div>
        <div style="max-width: 900px; border-bottom: 1px solid #dae0dd; margin: auto; text-align: left; padding-bottom:20px;" align="center" runat="server" id="Div1">
            <h4 style="margin-left: 10px;">PERSONAL DETAILS</h4>
            <div style="display: inline-block; text-align: left; margin-left:10px; margin-right:10px;">
                <div style="font-weight:bold">Email</div>
                <div>
                    <asp:TextBox runat="server" ID="Delivemailtxtbox" CssClass="delivemailtxtbox" Enabled="false" Text=""></asp:TextBox>
                </div>
            </div>
            <div style="display: inline-block; text-align: left;margin-left:10px; margin-right:10px;">
                <div style="font-weight:bold">Name</div>
                <div>
                    <asp:TextBox runat="server" ID="Delivnametxtbox" Enabled="false" CssClass="delivnametxtbox"></asp:TextBox>
                </div>
            </div>
            <div style="display: inline-block; text-align: left; margin-left:10px; margin-right:10px;">
                <div style="font-weight:bold">Mobile No</div>
                <div>
                    <asp:TextBox runat="server" ID="Delivmobiletxtbox" CssClass="delivmobiletxtbox"></asp:TextBox>
                    <button type="button" class="btn btn-default btn-sm" runat="server" onserverclick="editmobilenobtn_Click" id="editmobilenobtn" style="height: 35px; border: 0.5px solid #dae0dd;" causesvalidation="False">
                        <span class="glyphicon glyphicon-edit"></span>Edit
                    </button>
                </div>
            </div>
        </div>
        <div style="max-width: 900px; border-bottom: 1px solid #dae0dd; margin: auto; text-align: left; padding-bottom:20px;" align="center" runat="server" id="deliverydetailDiv">
            <h4 style="margin-left:10px;">DELIVERY ADDRESS</h4>
            <div style="display: inline-block; text-align: left; margin-left:10px; margin-right:10px;">
                <div style="font-weight:bold">Your delivery postcode</div>
                <div>
                    <asp:TextBox runat="server" ID="deliverypostcodetxtbox" CssClass="delivpostcodtxtbox"></asp:TextBox>
                    <button type="button" class="btn btn-default btn-sm" runat="server" onserverclick="editpostcodebtn_Click" id="editpostcodebtn" style="height: 35px; border: 0.5px solid #dae0dd;" causesvalidation="False">
                        <span class="glyphicon glyphicon-edit"></span>Edit
                    </button>
                </div>
            </div>
            <div style="display: inline-block; text-align: left; margin-left:10px; margin-right:10px;">
                <div style="font-weight:bold">Firstline of address
                    <asp:RequiredFieldValidator ID="AddressValidation" runat="server" ControlToValidate="deliveryaddresstxtbox" CssClass="alert-danger" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:TextBox runat="server" ID="deliveryaddresstxtbox" CssClass="delivaddresstxtbox"></asp:TextBox>
                </div>
            </div>
            <div style="display: inline-block; text-align: left; margin-left:10px; margin-right:10px;">
                <div style="font-weight:bold">City
                    <asp:RequiredFieldValidator ID="CityValidation" runat="server" ControlToValidate="deliveryaddresscity" CssClass="alert-danger" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:TextBox runat="server" ID="deliveryaddresscity" CssClass="delivaddresstxtbox"></asp:TextBox>
                </div>

            </div>
        </div>
        <div style="max-width: 900px; margin: auto; text-align: right; padding: 20px; padding-right:0px;" align="center">
            <asp:Button runat="server" ID="addresscontbtn" CssClass="addcontinuebutton" Text="Continue" OnClick="addresscontbtn_Click"></asp:Button>
        </div>
    </div>
</asp:Content>

