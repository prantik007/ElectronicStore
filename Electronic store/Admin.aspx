<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Electronic_store.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">


        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="button_green" Text="View All Users" Width="175px" OnClick="Button1_Click" Height="38px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="button_green" Text="View All Orders" Width="175px" OnClick="Button2_Click" Height="38px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>

    <div align="center">


        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Uid" DataSourceID="SqlDataSource1" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Height="256px" Width="824px">
                    <Columns>
                        <asp:BoundField DataField="Uid" HeaderText="User id" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
                        <asp:BoundField DataField="Uname" HeaderText="User name" SortExpression="Uname" />
                        <asp:BoundField DataField="Fname" HeaderText="First name" SortExpression="Fname" />
                        <asp:BoundField DataField="Lname" HeaderText="Last name" SortExpression="Lname" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Cntno" HeaderText="Contact no" SortExpression="Cntno" />
                        <asp:BoundField DataField="Ldate" HeaderText="Registration date" SortExpression="Ldate" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionStringfinal %>" SelectCommand="SELECT [Uid], [Uname], [Pwd], [Fname], [Lname], [Email], [Cntno], [Ldate] FROM [users]"></asp:SqlDataSource>
                
            </asp:View>

            <asp:View ID="View2" runat="server">
                
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Oid" DataSourceID="SqlDataSource2" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Height="222px" Width="469px">
                    <Columns>
                        <asp:BoundField DataField="Oid" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="Oid" />
                        <asp:BoundField DataField="Uid" HeaderText="User ID" SortExpression="Uid" />
                        <asp:BoundField DataField="Puid" HeaderText="Product ID" SortExpression="Puid" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionStringfinal %>" SelectCommand="SELECT [Oid], [Uid], [Puid] FROM [orders]"></asp:SqlDataSource>
                
            </asp:View>
        </asp:MultiView>


    </div>
</asp:Content>
