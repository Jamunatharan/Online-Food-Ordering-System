<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="js/myScript.js"></script>
    <link rel="stylesheet" href="StyleSheets/StyleSheetHome.css" type="text/css" />
    <div>
        <div class="homeContainer">
            <!--<img src="images/4LTo23fpB8main1.jpg" class="homeImage" alt="Home food image" />-->
            <a href="#mainHome">
                <div class="scrollUpBtnC"><i class="fas fa-arrow-up"></i></div>
            </a>
            <div class="homeMainSelectCon">

                <div class="InnerTable">
                    <p class="dineinicon" style="text-align: left; font-size: 15px; font-weight: bolder;"><span class="glyphicon glyphicon-cutlery" style="color: white; background-color: red; font-size: 20px; padding: 5px; border-radius: 2px;"></span>&nbsp;&nbsp;DINE IN</p>

                    <%--  <asp:Button ID="DineinBtn" CssClass="MainselecBtns" runat="server" Text="BOOK A TABLE" OnClick="DineinBtn_Click1" />--%>
                    <a href="#reserveTable" class="MainselecBtns1">BOOK A TABLE</a>
                </div>

                <div class="InnerTable1">
                    <p class="dineinicon" style="text-align: left; font-size: 15px; font-weight: bolder;"><i class="fa fa-shopping-bag" style="color: white; background-color: red; font-size: 20px; padding: 5px 7px; border-radius: 2px;"></i>&nbsp;&nbsp;TAKEAWAY & DELIVERY</p>
                    <asp:Button ID="Button2" CssClass="MainselecBtns" runat="server" Text="ORDER NOW" OnClick="Button2_Click" />
                </div>
            </div>
            <div class="homeimagedesign">
                <h4 class="newheading">NEW! ONLINE ORDERING</h4>
                <div class="homeIconContainer">
                    <div><div><i class="material-icons">&#xe323;</i></div><div class="clickIcon">CLICK</div></div>
                    <div><div><i class="fa fa-credit-card"></i></div><div>PAY</div></div>
                    <div><div><i class="fa fa-gift"></i></div><div>COLLECT</div></div>
                </div>
            </div>
        </div>
    </div>
    <div class="containabout" style="" id="about">
        <div class="aboutus">
            <img src="images/gold2.png" style="width: 50%; margin: 0 auto; height: 100px;"><h3>Golden Palace is one of the finest Srilankan & Indian restaurants in London.</h3>
            <p>
                <em>&quot;Restaurant serves authentic Srilankan and South Indian dishes. Its décor is
                contemporary and is one of trend setters of the Srilankan& South Indian food in UK.
                We opened our doors two decades back and are known for the flavours of traditional Srilankan
                and South Indian cuisine&quot;.</em>
            </p>
        </div>
        <div class="container" style="min-width: 100%; padding-right: 0px !important; padding-left: 0px !important;">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ol class="carousel-indicators" style="border-color: antiquewhite; border: 0;">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" style="min-width: 100%;">

                    <div class="item active" style="min-width: 100%;">
                        <img src="images/main1.jpg" alt="3 for £2" style="max-width: 100%; margin: 0 auto; height: 400px;">
                    </div>

                    <div class="item" style="min-width: 100%;">
                        <img src="images/dissert1.jpeg" alt="3 for £2" style="max-width: 100%; margin: 0 auto; height: 400px;">
                    </div>

                    <div class="item" style="min-width: 100%; background-size: cover;">
                        <img src="images/dissert1.jpeg" alt="3 for £2" style="max-width: 100%; margin: 0 auto; height: 400px;">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" style="background: none;" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-menu-left" style="color: white; top: 200px;"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" style="background: none;" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-menu-right" style="color: white; top: 200px;"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div id="menu"></div>
    </div>

    <div class="menucontainer">
        <h3 class="menuheading">MENU</h3>
        <div class="menucard">
            <h4 class="menutitlehead" style="color: #E6BE8A;">Starters</h4>


            <h5 class="menuitems" style="font-family: 'Californian FB';">Vegetable Samosa<br />
                Patties<br />
                Vegetable Cutlet<br />
                Vegetable Samosa
Fish cutlets<br />
                Fish Rolls<br />
                Lamb Roast<br />
                Meat Samosas<br />
                Mutton Rolls</h5>
            <h4 class="menutitlehead" style="color: #E6BE8A;">Fried Specialties</h4>
            <h5 class="menuitems">Fried Chicken<br />
                Fried Fish<br />
                Fried Mutton<br />
                Egg Hopper<br />
                Godamba Rotti<br />
                Hopper<br />
                Idiappa Kothu<br />
                Kothu Rotti<br />
                Milk Hopper<br />
                Vegetable kothu Rotti</h5>

            <h4 class="menutitlehead" style="color: #E6BE8A;">Main Course</h4>
            <h5 class="menuitems">Chicken Bhuna
Chicken Korma<br />
                Chicken Madras<br />
                Chicken Spinach<br />
                Lamb Korma<br />
                Lamb Madras<br />
                Lamb Spinach<br />
            </h5>
        </div>
        <div class="menucard">
            <h4 class="menutitlehead" style="color: #E6BE8A;">Curry dishes</h4>
            <h5 class="menuitems">Chicken Curry<br />
                Fish Curry<br />
                Mutton Curry<br />
                Prawn Curry<br />
                Chilly Chicken<br />
                Chilly Chicken Masala<br />
                Butter Chicken<br />
                Lamb Masala</h5>
            <h4 class="menutitlehead" style="color: #E6BE8A;">Rice & Bread</h4>
            <h5 class="menuitems">Egg-Fried Rice<br />
                Lemon Rice<br />
                Pilau Rice<br />
                Nan<br />
                Paratha<br />
                Chicken Biryani<br />
                Mutton Biryani<br />
                Prawn Biryani<br />
                Vegetable Biryani
            </h5>
            <h4 class="menutitlehead" style="color: #E6BE8A;">Dessert</h4>
            <h5 class="menuitems" id="dineinbooktable">Carrot Halwa<br />
                Cheese Cake<br />
                Coconut Halwa<br />
                Fruit Cream<br />
                Gulab Jamun<br />
                Kulfi<br />
                Rasmalai</h5>
        </div>
    </div>
    <br />
    <br />
    <br />
    <div class="reservetable" id="reserveTable">
        <h4 class="reservetableheading">RESERVE A TABLE AT GOLDEN PALACE</h4>
        <div class="reservationcontainer" align="center">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <div class="reservationcontrols">
                <asp:Label runat="server" ID="selectDateMsg" Text="" CssClass="tableBookMsgs"></asp:Label>
                <asp:TextBox ID="ReservationDateTextBox" Text="SELECT DATE" CssClass="controls" runat="server"></asp:TextBox><ajaxToolkit:CalendarExtender ID="ReservationCalendar" CssClass="calendar" TargetControlID="ReservationDateTextBox" runat="server" />
            </div>
            <div class="reservationcontrols">
                <asp:Label runat="server" ID="selectTimeMsg" Text="" CssClass="tableBookMsgs"></asp:Label>
                <asp:DropDownList ID="DropDownList1" CssClass="controls" runat="server">
                    <asp:ListItem>SELECT TIME</asp:ListItem>
                    <asp:ListItem>10:30 AM</asp:ListItem>
                    <asp:ListItem>11:00 AM</asp:ListItem>
                    <asp:ListItem>11:30 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>12:30 PM</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="reservationcontrols">
                <asp:Label runat="server" ID="selectPartysizeMsg" Text="" CssClass="tableBookMsgs"></asp:Label>
                <asp:DropDownList ID="DropDownList2" CssClass="controls" runat="server">
                    <asp:ListItem>PARTY SIZE</asp:ListItem>
                    <asp:ListItem>2 People</asp:ListItem>
                    <asp:ListItem>3 People</asp:ListItem>
                    <asp:ListItem>4 People</asp:ListItem>
                    <asp:ListItem>5 People</asp:ListItem>
                    <asp:ListItem>6 People</asp:ListItem>
                    <asp:ListItem>7 People</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="reservationcontrols">
                <asp:Button runat="server" CssClass="controlsbutton" Text="RESERVE A TABLE" ID="BookatableBtn" OnClick="BookatableBtn_Click" />
            </div>
            <br />
            <div>
                <asp:Label runat="server" ID="tableBookedMsg" Text="" CssClass="tableBookConMsgs"></asp:Label>
            </div>
        </div>
    </div>
    <div class="homepicture">
        <img src="images/home-image6.jpg" style="width: 100%; margin: 0 auto; height: 400px;">
    </div>
    <footer class="page-footer font-small unique-color-dark pt-0" style="background-color: #ffbb33; color: black; font-size: 13px;" id="contact">
        <div style="background-color: #FF8800;">
            <div class="container">
                <!--Grid row-->
                <div class="row py-4 d-flex align-items-center">
                    <!--Grid column-->
                    <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                        <h6 class="mb-0 white-text">Get connected with us on social networks!</h6>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6 col-lg-7 text-center text-md-right">
                        <!--Facebook-->
                        <a class="fb-ic ml-0">
                            <i class="fa fa-facebook white-text mr-lg-4"></i>
                        </a>
                        <!--Twitter-->
                        <a class="tw-ic">
                            <i class="fa fa-twitter white-text mr-lg-4"></i>
                        </a>
                        <!--Google +-->
                        <a class="gplus-ic">
                            <i class="fa fa-google-plus white-text mr-lg-4"></i>
                        </a>
                        <!--Linkedin-->
                        <a class="li-ic">
                            <i class="fa fa-linkedin white-text mr-lg-4"></i>
                        </a>
                        <!--Instagram-->
                        <a class="ins-ic">
                            <i class="fa fa-instagram white-text mr-lg-4"></i>
                        </a>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->
            </div>
        </div>

        <!--Footer Links-->
        <div class="container mt-5 mb-4 text-center text-md-left">
            <div class="row mt-3">

                <!--First column-->
                <div class="col-md-3 col-lg-4 col-xl-3 mb-4">
                    <h6 class="text-uppercase font-weight-bold">
                        <strong>Golden Palace</strong>
                    </h6>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 102px;">
                    <p>
                        Restaurant serves authentic Srilankan and South Indian dishes. Its décor is
                contemporary and is one of trend setters of the Srilankan& South Indian food in UK.
                    </p>
                </div>
                <!--/.First column-->

                <!--Second column-->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <h6 class="text-uppercase font-weight-bold">
                        <strong>Products</strong>
                    </h6>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 67px;">
                    <p>
                        <a href="#!">Order Online</a>
                    </p>
                    <p>
                        <a href="#!">Reserve a Table</a>
                    </p>
                    <p>
                        <a href="#!">Book a Party</a>
                    </p>
                    <p>
                        <a href="#!">Catering</a>
                    </p>
                </div>
                <!--/.Second column-->

                <!--Third column-->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                    <h6 class="text-uppercase font-weight-bold">
                        <strong>Useful links</strong>
                    </h6>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 85px;">
                    <p>
                        <a href="#!">Your Account</a>
                    </p>
                    <p>
                        <a href="#!">Become a Member</a>
                    </p>
                    <p>
                        <a href="#!">Find Us </a>
                    </p>
                    <p>
                        <a href="#!">Help</a>
                    </p>
                </div>
                <!--/.Third column-->

                <!--Fourth column-->
                <div class="col-md-4 col-lg-3 col-xl-3">
                    <h6 class="text-uppercase font-weight-bold">
                        <strong>Contact</strong>
                    </h6>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 58px;">
                    <p>
                        <span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;London, HA2 8PW, UK
                    </p>
                    <p>
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;info@goldenpalace.com
                    </p>
                    <p>
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;&nbsp;020 36383697
                    </p>
                    <p>
                        <span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;074 69954667
                    </p>
                </div>
                <!--/.Fourth column-->

            </div>
        </div>
        <!--/.Footer Links-->

        <!-- Copyright-->
        <div class="footer-copyright py-3 text-center">
            © 2018 Copyright: Golden Palace       
            
        </div>
        <!--/.Copyright -->

    </footer>
    <!--/.Footer-->

</asp:Content>

