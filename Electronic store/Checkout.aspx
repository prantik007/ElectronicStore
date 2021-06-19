<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Electronic_store.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 39px;
        }
        .auto-style5 {
            width: 98%;
            height: 287px;
        }
        .auto-style6 {
            width: 304px;
        }
        .auto-style7 {
            width: 504px;
            height: 180px;
        }
        .auto-style8 {
            width: 274px;
        }
        .auto-style9 {
            height: 39px;
            width: 274px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        
        <h1> PAYMENT </h1>
        <br />

        
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <ItemTemplate>
                <table class="auto-style5" style="font-size: 25px">
                    <tr>
                        <td class="auto-style6">FIRST NAME :</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Fname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">LAST NAME :</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Lname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">ADDRESS :</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Addr") %>' TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">EMAIL :</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">CONTACT NO. :</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Cntno") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionStringfinal %>" SelectCommand="SELECT [Fname], [Lname], [Addr], [Email], [Cntno] FROM [users] WHERE ([Uname] = @Uname)">
            <SelectParameters>
                <asp:SessionParameter Name="Uname" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        



     
        <br />
        



     
        <table align="center" cellpadding='0' cellspacing='0' class="auto-style7" border="1" style="padding: 4px; border-style: double; background-color: #DCDCDC;">
            <tr>
                <td class="auto-style8">CARD Number :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">CVV :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="58px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Expiry Date:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        <asp:ListItem>2029</asp:ListItem>
                        <asp:ListItem>2030</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Name on Card</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="175px"></asp:TextBox>
                </td>
            </tr>
        </table>


        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/place_order.png" OnClick="ImageButton1_Click" />


    </div>
</asp:Content>
