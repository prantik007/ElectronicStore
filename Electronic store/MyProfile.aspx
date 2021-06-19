<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Electronic_store.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 450px;
        }
        .auto-style3 {
        width: 534px;
        height: 417px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">


        <table align="center" class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="button_green" Text="View my details" OnClick="Button1_Click" Height="41px" Width="213px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="button_green" Text="View my orders" OnClick="Button2_Click" Height="41px" Width="213px" />
                </td>
            </tr>
        </table>
        <br />


    </div>

    <div align="center">


        <asp:MultiView ID="MultiView1" runat="server" >
            <asp:View ID="View1" runat="server">

                <h1> MY DETAILS</h1>
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        <table class="auto-style3" style="border-style: double; font-size: larger; font-weight: normal; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; text-align: center;" border="1">
                            <tr>
                                <td>Username :</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Uname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>First Name :</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Fname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Last Name :</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Lname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Address :</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Height="100px" Text='<%# Eval("Addr") %>' Width="149px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Email :</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Contact Number :</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Cntno") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionStringfinal %>" SelectCommand="SELECT [Uname], [Lname], [Fname], [Addr], [Email], [Cntno] FROM [users] WHERE ([Uname] = @Uname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Uname" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:View>
             
            <asp:View ID="View2" runat="server">
                <h1> MY ORDERS</h1>
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" Height="469px" Width="738px" Font-Bold="True" >
            <Columns>
                <asp:BoundField DataField="Oid" HeaderText="Order ID" />
                <asp:ImageField DataImageUrlField="Purl" HeaderText="Picture">
                    <ControlStyle Height="150px" Width="100px" />
                    <ItemStyle Height="50px" Width="30px" />
                </asp:ImageField>
                <asp:BoundField DataField="Ptitle" HeaderText="Product" />
                <asp:BoundField DataField="Pprice" HeaderText="Price (Rs.)" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
                <br />
                <br />



        </asp:View>
        </asp:MultiView>
        

    </div>
</asp:Content>
