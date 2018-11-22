<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayorderAdmin.aspx.cs" Inherits="DisplayorderAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

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

        .table{
            border-collapse: collapse;
        }
        .backtoordersbutton{
            float:left;
            width:250px;
            height:40px;
            margin-top:200px;
            margin-left:170px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <div style="background-color:#dae0dd; height:60px; font-size:35px; text-align:left; padding-top:15px; padding-left:20px;">Golden Palace</div>
            <asp:Repeater runat="server" ID="displayadmin">
                <HeaderTemplate>
                    <table style="margin-top:100px; min-width:1000px; border-collapse: collapse;"  border="1" align="center">
                        <tr>
                            <th class="th">Order ID</th>
                            <th class="th">Email</th>
                            <th class="th">Name</th>
                            <th class="th">Postcode</th>
                            <th class="th">Firstline of Address</th>
                            <th class="th">City</th>
                            <th class="th">Mobile Number</th>
                            <th class="th">Order Details</th>
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
                        <td class="td"><a href="Viewfullorder.aspx?Id=<%#Eval("Id") %>">View full order</a></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <div><asp:Button runat="server" ID="productback" CssClass="backtoordersbutton" Text="Back" OnClick="productback_Click" /></div>
        </div>
    </form>
</body>
</html>
