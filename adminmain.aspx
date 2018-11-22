<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminmain.aspx.cs" Inherits="adminmain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color:#dae0dd; height:60px; font-size:35px; text-align:left; padding-top:15px; padding-left:20px;">Golden Palace 
            <div style="text-align:right; margin:20px; font-size:18px; display:inline-block; float:right;"><asp:Label runat="server" ID="admindisplay"></asp:Label>&nbsp;&nbsp;<asp:LinkButton runat="server" ID="adminlogoutbtn" Text="LOGOUT" OnClick="adminlogoutbtn_Click"></asp:LinkButton></div></div>
            <div style="text-align:center; margin-top:200px;">
           <button type="button" class="btn btn-default btn-sm" style="width:300px; height:200px; font-size:30px;">
          <span class="glyphicon glyphicon-user"></span>Manage User</button> <button type="button" class="btn btn-default btn-sm" runat="server" id="manageorderbtn" onserverclick="manageorderbtn_Click" style="width:300px; height:200px; font-size:30px;">
          <span class="glyphicon glyphicon-shopping-cart"></span> Manage Order
        </button>
                <button type="button" class="btn btn-default btn-sm" runat="server" id="manageproductbtn" onserverclick="manageproductbtn_Click" style="width:300px; height:200px; font-size:30px;">
          <span class="glyphicon glyphicon-list-alt"></span> Manage Product
        </button>
                </div>
        </div>
    </form>
</body>
</html>
