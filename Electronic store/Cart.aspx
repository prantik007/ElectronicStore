<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Electronic_store.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-decoration: underline;
            font-size: xx-large;
            color: #FF0000;
            margin-left: 400px;
        }
        .auto-style3 {
            margin-left: 1000px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="auto-style2">
      
&nbsp;&nbsp;
       My Cart
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
    <div  width="500px" class="auto-style3">

        <asp:Button ID="Button1" runat="server" Text="Clear Cart" CssClass="button_red" OnClick="Button1_Click" />

    </div>
    
    <div align="center">


        


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowDeleting="GridView1_RowDeleting" Width="716px" Font-Bold="True">
            <Columns>
                <asp:ImageField DataImageUrlField="Purl" HeaderText="Product Image">
                    <ControlStyle Width="100px" />
                    <ItemStyle Height="150px" HorizontalAlign="Left" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="Ptitle" HeaderText="Product Name" />
               <asp:BoundField DataField="Pprice" HeaderText="Price" />
                <asp:CommandField ShowDeleteButton="True" />
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
        
        <table style="background-color: #E2E2E2">
            <tr>
                <td>

                    <asp:Label ID="Label1" runat="server" Text="Total Price: " Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </td>
                <td>

                    &nbsp;&nbsp;&nbsp;&nbsp; Rs.

                    <asp:Label ID="lbl_price" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>

                </td>
                
            </tr>
        </table>


        <br />
        <br />


        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/place_order.png" OnClick="ImageButton1_Click" />


    </div>
</asp:Content>
