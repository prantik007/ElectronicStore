<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Electronic_store.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 96%;
            height: 171px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">

        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style2" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <br />
                <table border="1" class="auto-style4" style="border: thin groove #000000">
                    <tr>
                        <td class="auto-style5" style="font-size: x-large; font-family: Constantia; font-weight: bold; font-style: normal; font-variant: normal;">
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# string.Format("../Product_Description.aspx?name={0}", Eval("Ptitle")) %>' Text='<%# Eval("Ptitle") %>'></asp:HyperLink>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <br />
                            <asp:Image ID="Image1" runat="server" Width="190px" Height="230px" ImageUrl='<%# Eval("Purl") %>' />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="font-size: x-large; font-family: Constantia; font-weight: bold; font-style: normal; font-variant: normal;">
                            <br />
                            Rs.
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionStringfinal %>" SelectCommand="SELECT [Ptitle], [Pdesc], [Pprice], [Purl] FROM [products] WHERE ([Pcat] = @Pcat)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Pcat" QueryStringField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


    </div>
    </asp:Content>
