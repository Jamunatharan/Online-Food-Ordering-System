<%@ Page Title="" Language="C#" MasterPageFile="~/masterCustom.master" AutoEventWireup="true" CodeFile="Viewcart.aspx.cs" Inherits="Viewcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/myScript.js"></script>
    <link rel="stylesheet" href="StyleSheets/StyleSheetViewcart.css" type="text/css" />
    <div class="viewMainC">

        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:DataList ID="Viewcartlist" align="Center" CssClass="viewcartlist" runat="server">

                <HeaderTemplate>
                    <div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="prdtInfoMainC">
                        <div style="display: inline-block; margin: 5px;">
                            <img src="<%#Eval("ProductImage") %>" height="100" width="100" />
                        </div>

                        <div style="display: inline-block; width: 150px; margin: 5px;">
                            <h4><strong><%#Eval("ProductName")%></strong></h4>
                        </div>
                        <div style="display: inline-block; width: 200px; margin: 5px;"><%#Eval("ProductDescription") %></div>
                        <div style="display: inline-block; margin: 5px; width: 20px; text-align: center;"><strong>£<%#Eval("ProductPrice") %></strong></div>
                        <div style="display: inline-block;">

                            <a href="#" onclick="pageLoad(); return false;" id="qtyIncreaseBtn">
                                <span class="glyphicon glyphicon-plus" style="border: 1px solid; padding: 5px; border-radius: 2px;"></span>
                            </a>

                            <label id="productQty" style="Width:20px; Height: 28px; Font-Size: 12px; text-align: center;" ><%#Eval("ProductQuantity")%></Label>
                           

                            <a href="#" onclick="pageLoad(); return false;" id="qtyDecreaseBtn">
                                <span class="glyphicon glyphicon-minus" style="border: 1px solid; padding: 5px; border-radius: 2px;"></span>
                            </a>
                        </div>

                        <div style="display: inline-block; margin: 10px; width: 100px; text-align: right;">
                            <a href="Deletecart.aspx?id=<%#Eval("ID") %>"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;Delete item</a>
                        </div>
                        <div style="display: inline-block; margin-left: 5px; color: orangered;">
                            <%#Eval("ProductSpice") %>
                        </div>
                        <div style="display: inline-block; margin-left: 5px;">
                            <%#Eval("ProductNote") %>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></div></FooterTemplate>
            </asp:DataList>
           
            <div style="text-align: center;">
                <div class="totalContainer">
                    <div style="font-size: 12px; margin: auto; text-align: left; width: 200px; display: inline-block;" align="right">
                        &nbsp;<asp:Label ID="labelsubtotalhead" runat="server" Text="SUBTOTAL"></asp:Label>
                    </div>
                    <div style="font-size: 12px; margin: auto; display: inline-block; width: 50px; text-align: right;" align="right">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="labeltotal" runat="server" Text=""></asp:Label>
                    </div>
                    <br />
                    <div style="font-size: 12px; margin: auto; display: inline-block; width: 200px; text-align: left" align="right">&nbsp;<asp:Label ID="Labeldelivchargehead" runat="server" Text="DELIVERY CHARGE"></asp:Label></div>
                    <div style="font-size: 12px; margin: auto; display: inline-block; width: 50px; text-align: right;" align="right">
                        &nbsp;
                        <asp:Label ID="deliverychargelabel" runat="server" Text=""></asp:Label>
                    </div>
                    <br />
                    <div style="font-size: 12px; margin: auto; display: inline-block; font-weight: bold; width: 200px; text-align: left" align="right">
                        <asp:Label ID="grandtotalheadlbl" runat="server" Text="GRAND TOTAL"></asp:Label>
                    </div>
                    <div style="font-size: 12px; margin: auto; margin-right: 5px; display: inline-block; font-weight: bold; width: 50px; text-align: right;" align="right">
                        <asp:Label ID="grandtotallabel" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <div style="text-align: center; font-size: 24px;">
                <asp:Label runat="server" ID="cartemptylbl" Text=""></asp:Label>
            </div>
            <div align="center" style="text-align: center;">
                <div style="display: inline-block;">
                    <asp:Button runat="server" CssClass="continueshoppingbutton" ID="continuebtn" Text="Continue Shopping" OnClick="continuebtn_Click"></asp:Button>
                </div>
                <div style="display: inline-block;">
                    <asp:Button runat="server" CssClass="checkoutbutton" ID="checkoutbtn" Text="Check Out" OnClick="checkoutbtn_Click"></asp:Button>
                </div>
            </div>
        </div>
        <!-- <div style="display: inline-block; margin: 10px;">
                <asp:TextBox ID="productqtyview" runat="server"></asp:TextBox></div>
            <div style="display: inline-block; margin: 10px;">
                <asp:TextBox ID="productspiceview" runat="server"></asp:TextBox></div>
            <div style="display: inline-block; margin: 10px;">
                <asp:TextBox ID="productnoteview" runat="server"></asp:TextBox></div>-->
    </div>
</asp:Content>

