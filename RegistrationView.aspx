<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationView.aspx.cs" Inherits="RegistrationView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" Height="322px" Width="776px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="RegistrationDataSource" ForeColor="#333333" GridLines="Vertical" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                    <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="RegistrationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
