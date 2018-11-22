<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manageproduct.aspx.cs" Inherits="Manageproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .addproductcontainer {
            max-width: 500px;
            height: 100%;
            border-collapse: collapse;           
            padding-bottom: 10px;
            margin: auto;
            margin-top: 50px;            
            text-align:left;
            padding-left:20px;
            padding-right:20px;
        }

        .addproductcontrols {           
                    
            height: 40px;
            width: 100%;            
            margin-bottom:10px;
        }
         .backtoordersbutton{
            float:left;
            width:250px;
            height:40px;
            margin-top:40px;
            margin-left:450px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div style="background-color:#dae0dd; height:60px; font-size:35px; text-align:left; padding-top:15px; padding-left:20px;">Golden Palace</div>
            <div class="addproductcontainer" align="center">
                <div>Product Type</div>
                <div>
                    <asp:DropDownList ID="ProductTypeDropList" CssClass="addproductcontrols" runat="server">
                        <asp:ListItem>SELECT ITEM TYPE</asp:ListItem>
                        <asp:ListItem>STARTERS</asp:ListItem>
                        <asp:ListItem>MAIN DISHES</asp:ListItem>
                        <asp:ListItem>KIDS MEALS</asp:ListItem>
                        <asp:ListItem>DESSERTS</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>Product Name</div>
                <div>
                    <asp:TextBox ID="ProductNameTxtbox" CssClass="addproductcontrols" runat="server"></asp:TextBox>
                </div>
                <div>Product Price</div>
                <div>
                    <asp:TextBox ID="ProductPriceTxtbox" CssClass="addproductcontrols" runat="server"></asp:TextBox>
                </div>
                <div>Product Description</div>
                <div>
                    <asp:TextBox ID="ProductDescriptionTxtbox" CssClass="addproductcontrols" runat="server"></asp:TextBox>
                </div>
                <div>Product Image</div>
                <div>
                    <asp:FileUpload ID="ImagePath" runat="server"></asp:FileUpload>
                </div>
                <div>
                    <asp:Button ID="ProductAddBtn" runat="server" CssClass="addproductcontrols" Text="Add Product" OnClick="ProductAddBtn_Click" />
                </div>
            </div>
            <div><asp:Button runat="server" CssClass="backtoordersbutton" ID="productback" Text="Back" OnClick="productback_Click" /></div>
        </div>

    </form>
</body>
</html>
