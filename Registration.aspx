<%@ Page Title="" Language="C#" MasterPageFile="~/masterCustom.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <script src="js/myScript.js"></script>
    <link rel="stylesheet" href="StyleSheets/StyleSheetRegistration.css" type="text/css" />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div>
        <div class="regibordtbl" align="center">
            <div class="topbanner">Create account</div>

            <div class="textboxraws">
                <asp:Label ID="LablEmaiExist" runat="server" CssClass="LablEmailExis" Style="color: #FF0000"></asp:Label>
            </div>

            <div class="textboxraws">
                <asp:TextBox ID="regemailtxtbox" runat="server" placeholder="Email address" CssClass="registxtbox" CausesValidation="True"></asp:TextBox>
            </div>

            <div class="textboxraws">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="regemailtxtbox" CssClass="validationtextmessages" ErrorMessage="* Email ID is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="regemailtxtbox" CssClass="validationtextmessages" ErrorMessage="* Invalid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div class="textboxraws">
                <asp:TextBox ID="regpasswdtxtbox" runat="server" placeholder="Password" TextMode="password" CssClass="registxtbox" CausesValidation="True" MaxLength="10"></asp:TextBox>
                <ajaxToolkit:BalloonPopupExtender ID="PasswordPopup" customclassname="PasswordHintPopup" TargetControlID="regpasswdtxtbox" CustomCssUrl="StyleSheetRegistration.css" BalloonStyle="custom" DisplayOnFocus="true"
                    Position="bottomright" BalloonPopupControlID="Passwordhintpopup" runat="server">
                </ajaxToolkit:BalloonPopupExtender>
                <asp:Panel ID="Passwordhintpopup" CssClass="panelpass" runat="server">
                    For increased security, your password must be atleast 8 character long.
                </asp:Panel>
            </div>

            <div class="textboxraws">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="regpasswdtxtbox" CssClass="validationtextmessages" ErrorMessage="* Password is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="regpasswdtxtbox" CssClass="validationtextmessages" ErrorMessage="* Weak password" ValidationExpression="^(?=.*\d{2})(?=.*[a-zA-Z]{2}).{8,}$"></asp:RegularExpressionValidator>
            </div>

            <div class="textboxraws">
                <asp:TextBox ID="regconfpasstxtbox" runat="server" placeholder="Confirm Password" TextMode="Password" CssClass="registxtbox" CausesValidation="True" MaxLength="10"></asp:TextBox>
            </div>

            <div class="textboxraws">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="regconfpasstxtbox" CssClass="validationtextmessages" ErrorMessage="* Confirm password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="regpasswdtxtbox" ControlToValidate="regconfpasstxtbox" CssClass="validationtextmessages" ErrorMessage="* Password doesn't match"></asp:CompareValidator>
            </div>

            <div class="textboxraws">
                <asp:TextBox ID="Nametxtbox" placeholder="Name" runat="server" CssClass="registxtbox" CausesValidation="True"></asp:TextBox>
            </div>

            <div class="textboxraws">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Nametxtbox" CssClass="validationtextmessages" ErrorMessage="* Name is required"></asp:RequiredFieldValidator>
            </div>

            <div class="textboxraws">
                <asp:TextBox ID="phonenotxtbox" runat="server" placeholder="Phone" CssClass="registxtbox" CausesValidation="True" MaxLength="14"></asp:TextBox>
            </div>

            <div class="textboxraws">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phonenotxtbox" CssClass="validationtextmessages" ErrorMessage="* Phone No is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="phonenotxtbox" CssClass="validationtextmessages" ErrorMessage="* Invalid number" ValidationExpression="^(((\+44\s?\d{4}|\(?0\d{4}\)?)\s?\d{3}\s?\d{3})|((\+44\s?\d{3}|\(?0\d{3}\)?)\s?\d{3}\s?\d{4})|((\+44\s?\d{2}|\(?0\d{2}\)?)\s?\d{4}\s?\d{4}))(\s?\#(\d{4}|\d{3}))?$"></asp:RegularExpressionValidator>
            </div>

            <div class="textboxraws">
                <asp:TextBox ID="regpostcodtxtbox" runat="server" placeholder="Postcode" CssClass="registxtbox" CausesValidation="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="regpostcodtxtbox" CssClass="validationtextmessages" ErrorMessage="* Postcode is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="regpostcodtxtbox" ErrorMessage="* Invalid postcode" ValidationExpression="(?i)GIR[ ]?0AA|((AB|AL|B|BA|BB|BD|BH|BL|BN|BR|BS|BT|CA|CB|CF|CH|CM|CO|CR|CT|CV|CW|DA|DD|DE|DG|DH|DL|DN|DT|DY|E|EC|EH|EN|EX|FK|FY|G|GL|GY|GU|HA|HD|HG|HP|HR|HS|HU|HX|IG|IM|IP|IV|JE|KA|KT|KW|KY|L|LA|LD|LE|LL|LN|LS|LU|M|ME|MK|ML|N|NE|NG|NN|NP|NR|NW|OL|OX|PA|PE|PH|PL|PO|PR|RG|RH|RM|S|SA|SE|SG|SK|SL|SM|SN|SO|SP|SR|SS|ST|SW|SY|TA|TD|TF|TN|TQ|TR|TS|TW|UB|W|WA|WC|WD|WF|WN|WR|WS|WV|YO|ZE)(\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}))|BFPO[ ]?\d{1,4}" CssClass="validationtextmessages"></asp:RegularExpressionValidator>
            </div>

            <div class="textboxraws">
                <asp:Button ID="SignupBtn" runat="server" Text="SIGN UP" CssClass="signupbtn" OnClick="Button1_Click" />
            </div>

            <div class="texthaveaccount" style="text-align: center; margin: 10px;">
                <asp:LinkButton ID="AlreadyhaveaccLnkBtn" runat="server" OnClick="AlreadyhaveaccLnkBtn_Click" CausesValidation="False" CssClass="RegistrationFormLnkBtn">Already have an account?</asp:LinkButton>
            </div>

        </div>   

    </div>
</asp:Content>

