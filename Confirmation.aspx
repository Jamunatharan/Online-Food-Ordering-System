<%@ Page Title="" Language="C#" MasterPageFile="~/masterCustom.master" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link rel="stylesheet" href="StyleSheets/StyleSheetConfirmation.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <div style="width: 90%; margin-left: 5%; margin-right: 5%; background-color: white; min-height: 100vh;">
    <div style="max-width: 900px; margin: auto; background-color: #dae0dd;" align="center">
            <div class="processfuntopadd">Address<span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px; padding-right: 5px; font-size: 20px;"></span></div>
            <div class="processfuntoppay">Payment<span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px; padding-right: 5px; font-size: 20px;"></span></div>
            <div class="processfuntopcon">Confirmation<span class="glyphicon glyphicon-menu-right" style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px; padding-right: 5px; font-size: 20px;"></span></div>
        </div>
    <div style="text-align:center; font-size:18px; margin-top:100px;">Thank you for ordering with us.<br /> We have recieved your order and you will be notified when the order is ready.</div>
        </div>
</asp:Content>


