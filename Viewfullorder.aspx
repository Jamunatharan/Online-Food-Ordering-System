<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Viewfullorder.aspx.cs" Inherits="Viewfullorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .backtoordersbutton{
            float:left;
            width:250px;
            height:40px;
            margin-top:40px;
        }
        .td{
            border: 2px solid #dae0dd;
            padding:10px; 
            min-width:100px;
        }
        .th{
            border: 2px solid #dae0dd;
            padding:10px; 
            min-width:100px;
            background-color:#dae0dd;
        }

        .orderreadybutton{
            float:right;
            width:250px;
            height:40px;
            margin-top:40px;
        }

        .table{
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div style="background-color:#dae0dd; height:60px; font-size:35px; text-align:left; padding-top:15px; padding-left:20px;">Golden Palace</div>
            <asp:Repeater runat="server" ID="displayadmin">
                <HeaderTemplate>
                    <table style="margin-top:100px; min-width:1200px;  border-collapse: collapse;"  border="1" align="center">
                        <tr>
                            <th class="th">Order ID</th>
                            <th class="th">Email</th>
                            <th class="th">Name</th>
                            <th class="th">Postcode</th>
                            <th class="th">Firstline of Address</th>
                            <th class="th">City</th>
                            <th class="th">Mobile Number</th>                            
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="td"><%#Eval("Id") %></td>
                        <td class="td"><%#Eval("Email") %></td>
                        <td class="td"><%#Eval("Name") %></td>
                        <td class="td"><%#Eval("Postcode") %></td>
                        <td class="td"><%#Eval("FirstlineAddress") %></td>
                        <td class="td"><%#Eval("City") %></td>
                        <td class="td"><%#Eval("PhoneNumber") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>


        <div>
            <asp:Repeater runat="server" ID="vieworderrepeater">
                <HeaderTemplate>
                    <table style="border-collapse: collapse; min-width:1200px; margin-top:40px;" border="1" align="center">
                        <tr style="font-size:18px; font-weight:bold;">
                            <th class="th">Product Image</th>
                            <th class="th">Product Name</th>
                            <th class="th">Product Price</th>
                            <th class="th">Quantity</th>
                            <th class="th">Spice</th>
                            <th class="th">Note</th>
                            <th class="th">Order Type</th>
                            <th class="th">Order Time</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr >
                        <td class="td"><img src="<%#Eval("ProductImage") %>" height="70" width="140" /></td>
                        <td class="td"><%#Eval("ProductName") %></td>
                        <td class="td">£<%#Eval("ProductPrice") %></td>
                        <td class="td"><%#Eval("ProductQuantity") %></td>
                        <td class="td"><%#Eval("ProductSpice") %></td>
                        <td class="td"><%#Eval("ProductNote") %></td>
                        <td class="td"><%#Eval("OrderType") %></td>
                        <td class="td"><%#Eval("OrderTime") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <div style="max-width:1200px; margin:auto;" align="center"><asp:Button runat="server" ID="Backtoordersbtn" CssClass="backtoordersbutton" Text="Back to Orders" OnClick="Backtoordersbtn_Click" /><asp:Button runat="server" ID="Orderready" CssClass="orderreadybutton" Text="Order Ready" OnClick="Orderready_Click" /></div>
        </div>
    </form>
</body>
</html>
