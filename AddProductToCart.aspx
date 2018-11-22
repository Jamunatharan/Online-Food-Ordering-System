<%@ Page Title="" Language="C#" MasterPageFile="~/masterCustom.master" AutoEventWireup="true" CodeFile="AddProductToCart.aspx.cs" Inherits="AddProductToCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="StyleSheets/StyleSheetAddtocart.css" type="text/css" />

    <div class="addtoCardMainC">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:Repeater ID="Repeaterproductdisplay" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="imgAndDescriC" style="text-align: center;">
                    <div class="productDetailC">
                        <img src="../<%#Eval("ProductImage")%>" class="productImgC" />
                        <div class="productDescC">
                            <h3><%#Eval("ProductName") %></h3>

                            <%#Eval("ProductDescription") %>
                            <br>
                            <strong class="price">£<%#Eval("ProductPrice")%></strong>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
        <div class="customiseMainC">
            <!--<div style="text-align: center;">
                    Customise your order
                </div>-->
            <div class="quantityC">
                <div style="font-weight: bolder; margin-bottom: 5px;">Confirm your quantity</div>
                <div>
                    <asp:Button ID="quantitydecreasebtn" CssClass="quantitybtnminus" runat="server" Text="-" AutoPostBack="False" OnClick="quantitydecreasebtn_Click" />
                    <asp:TextBox ID="ProductQuantity" CssClass="quantitytxtbox" Text="1" runat="server"></asp:TextBox>
                    <asp:Button ID="quantityincreasebtn" CssClass="quantitybtnplus" runat="server" Text="+" OnClick="quantityincreasebtn_Click" />
                </div>
            </div>

            <div class="spiceCustomC" runat="server" id="spicecustomisation">

                <div class="choseSpice">
                    Choose your spice&nbsp;&nbsp;
                <asp:Label ID="ProductSpice" CssClass="displayspicelabel" runat="server" Text=""></asp:Label>
                </div>
                <div class="spiceImg">
                    <asp:Image Height="20px" ID="spiceimage" runat="server"></asp:Image>
                </div>

                <div class="spiceBtnsC">

                    <asp:Button runat="server" CssClass="spicyselectbtns1" ID="extrahot" Text="Extra Hot" OnClick="extrahot_Click"></asp:Button>
                    <asp:Button ID="hot" runat="server" CssClass="spicyselectbtns2" Text="Hot" OnClick="hot_Click"></asp:Button>
                    <asp:Button ID="medium" runat="server" CssClass="spicyselectbtns3" Text="Medium" OnClick="medium_Click"></asp:Button>
                    <asp:Button ID="mild" runat="server" CssClass="spicyselectbtns4" Text="Mild" OnClick="mild_Click"></asp:Button>
                    <asp:Button runat="server" ID="verymild" CssClass="spicyselectbtns5" Text="Very Mild" OnClick="verymild_Click"></asp:Button>

                </div>

            </div>
            <div class="splNoteC">
                <div style="font-weight: bolder; margin-bottom: 5px;">Special Note</div>
                <div>
                    <asp:TextBox ID="ProductNote" TextMode="MultiLine" placeholder="Eg: No added oil." Width="100%" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="addtoCartBtnC">
                <div class="buttonC">
                    <asp:Button ID="addtobagbtn" CssClass="addtocartaddtobagbutton" runat="server" Text="Add to Bag" OnClick="addtobagbtn_Click" />
                </div>
                <div class="buttonC">
                    <asp:Button ID="addtocartbackbtn" CssClass="addtocartbutton" runat="server" Text="Back to Menu" OnClick="addtocartbackbtn_Click" />
                </div>               
            </div>
            <!-- <div style="text-align:left;"><img src="images/chilli5.png" class="chilliimage" style="width:75px; height:30px;" /><img src="images/chilli4.png" class="chilliimage" style="width:75px; height:30px;" /><img src="images/chilli3.png" class="chilliimage" style="width:75px; height:30px;" /><img src="images/chilli2.png" class="chilliimage" style="width:75px; height:30px;" /><img src="images/chilli1.png" class="chilliimage" style="width:75px; height:30px;" /></div><br/>-->
        </div>
         <script src="js/myScript.js"></script>
    </div>
</asp:Content>

