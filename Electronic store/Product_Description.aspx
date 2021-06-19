<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Product_Description.aspx.cs" Inherits="Electronic_store.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 821px;
            height: 598px;
        }
        .auto-style3 {
            font-size: x-large;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">

        <table border='0' cellpadding='0' cellspacing='0' align='center' bgcolor="#FFF7E7" font-color="red" class="auto-style2">
            <tr>
                <td>

                </td>
                <td align='center'>

                    <asp:Label ID="lbl_title" runat="server" Font-Size="XX-Large" Text="Label" Font-Bold="True" ForeColor="#3399FF"></asp:Label>

                </td>
            </tr>
            <tr>
                <td align='center'>

               <asp:Image ID="img_product" runat="server" Height="331px" Width="216px" />

                </td>
                <td align='center'>

                    <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Label" AutoSize="false" Height="278px" Width="212px"></asp:Label>

                </td>
            </tr>
            <tr>
                <td align='center' class="auto-style3">

                    <strong>PRICE</strong></td>
                <td>

                </td>
            </tr>
            <tr>
                <td align='center'>

                    Rs.
                    <asp:Label ID="lbl_price" runat="server" Font-Size="X-Large" Text="Label" Font-Bold="True" ForeColor="#FF6600"></asp:Label>

                </td>
                <td align='center'>

                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/add_to_cart.png" OnClick="ImageButton1_Click" />

                </td>
            </tr>
        </table>


   



    



    </div>
</asp:Content>
