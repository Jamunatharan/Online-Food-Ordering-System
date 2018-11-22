<%-- <%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="Mainmenu.aspx.cs" Inherits="Mainmenu" %>--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/masterCustom.master" AutoEventWireup="true" CodeFile="Mainmenu.aspx.cs" Inherits="Mainmenu" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="StyleSheets/StyleSheetMenu.css" type="text/css" />

    <div style="max-width: 100%; background-color: white; min-height: 100vh;" align="center">
        <div class="text-center" style="background-color: #ffd24f; max-width: 1041px;">          
            
                    <asp:Button CssClass="mainmenubuttons" ID="StartersBtn" runat="server" Text="Starters" OnClick="StartersBtn_Click"></asp:Button>
                    <asp:Button CssClass="mainmenubuttons" ID="MaindishesBtn" runat="server" Text="Main Dishes" OnClick="MaindishesBtn_Click"></asp:Button>
                    <asp:Button CssClass="mainmenubuttons" ID="KidsmealBtn" runat="server" Text="Drinks" OnClick="KidsmealBtn_Click"></asp:Button>
                    <asp:Button CssClass="mainmenubuttons" ID="DessertsBtn" runat="server" Text="Desserts" OnClick="DessertsBtn_Click"></asp:Button>
               
        </div>

        <div style="text-align: center; border: 0.5px solid #dae0dd; max-width: 1041px; padding-top: 10px; padding-bottom: 10px;">
            <div style="display: inline-block;">
                <!--<div style="text-align: center;">Enter your postcode to find out if we deliver to your area</div>-->
                <asp:TextBox ID="postcodechecktxtbox" Style="text-transform: UpperCase;" ToolTip="Enter your postcode to find out if we deliver to your area" CssClass="postcodechecktextbox" placeholder="Postcode" runat="server"></asp:TextBox>
                <asp:Button runat="server" ID="postcodecheckbtn" CssClass="postcodecheckbutton" Text="Search" OnClick="postcodecheckbtn_Click"></asp:Button>
                <asp:RegularExpressionValidator ID="postcodevalidation" runat="server" ControlToValidate="postcodechecktxtbox" ErrorMessage="" ValidationExpression="(?i)GIR[ ]?0AA|((AB|AL|B|BA|BB|BD|BH|BL|BN|BR|BS|BT|CA|CB|CF|CH|CM|CO|CR|CT|CV|CW|DA|DD|DE|DG|DH|DL|DN|DT|DY|E|EC|EH|EN|EX|FK|FY|G|GL|GY|GU|HA|HD|HG|HP|HR|HS|HU|HX|IG|IM|IP|IV|JE|KA|KT|KW|KY|L|LA|LD|LE|LL|LN|LS|LU|M|ME|MK|ML|N|NE|NG|NN|NP|NR|NW|OL|OX|PA|PE|PH|PL|PO|PR|RG|RH|RM|S|SA|SE|SG|SK|SL|SM|SN|SO|SP|SR|SS|ST|SW|SY|TA|TD|TF|TN|TQ|TR|TS|TW|UB|W|WA|WC|WD|WF|WN|WR|WS|WV|YO|ZE)(\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}))|BFPO[ ]?\d{1,4}" CssClass="validationtextmessages" EnableViewState="False"></asp:RegularExpressionValidator>
                <div>
                    <asp:Label runat="server" ID="postcodemsglbl" Text=""></asp:Label>
                </div>

            </div>
        </div>
        <!-- <div style="text-align: center; margin-bottom: 40px;">
            <asp:Panel runat="server" class="mainmenuselectionstarter"><a href="#"><span class="pannelspanmainmenu"></span></a></asp:Panel>
            <asp:Panel runat="server" class="mainmenuselectionmain"><a href="#"><span class="pannelspanmainmenu"></span></a></asp:Panel>
            <asp:Panel runat="server" class="mainmenuselectionkids"><a href="#"><span class="pannelspanmainmenu"></span></a></asp:Panel>
            <asp:Panel runat="server" class="mainmenuselectiondessert"><a href="#"><span class="pannelspanmainmenu"></span></a></asp:Panel>
        </div>-->

        <div style="margin-top: 10px;">
            <asp:Repeater ID="Repeaterproductdisplay" runat="server">      
            

                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>                    

                    <div style="display: inline-block; margin-bottom: 20px;">
                        <asp:Panel runat="server" class="fooddetailscontainer" Style="margin-bottom: 10px; width: 250px; margin: 5px; display: inline-block;">
                            <div class="productimagecontainer" style="display: inline-block; position: relative;">
                                <a href="#" class="infoicon" data-toggle="tooltip" data-placement="left" title="Allergy advice"><span class="glyphicon glyphicon-info-sign"></span></a>
                                <a href="AddProductToCart.aspx?id=<%#Eval("ProductID") %>">
                                    <img src="../<%#Eval("ProductImage")%>" alt="" class="productimage" style="height: 220px; width: 250px;" /></a>
                            </div>
                            <div class="productinfo" style="display: inline-block; text-align: left; background-color: #ffbb33; color: black; width: 250px; height: 125px;">
                                <div style="padding-left: 5px; font-size: 18px; height: 20px; font-weight: bold;"><%#Eval("ProductName")%></div>
                                <div class="productdescription">
                                    <div style="padding-left: 5px; height: 45px;"><%#Eval("ProductDescription")%></div>
                                    <strong class="price" style="padding-left: 5px; height: 20px;">£<%#Eval("ProductPrice")%></strong>
                                    <div style="margin-bottom: 10px; text-align: center; margin-top: 10px;">
                                        <div style="display: inline-block;"><a href="AddProductToCart.aspx?id=<%#Eval("ProductID") %>" class="custombtn" style="text-decoration: none; color: white; background-color: darkcyan; padding-left: 80px; padding-right: 80px; padding-top: 10px; padding-bottom: 10px;">CUSTOMISE</a></div>

                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>                    

                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>    
        

            </asp:Repeater>
        </div>
    </div>
</asp:Content>

