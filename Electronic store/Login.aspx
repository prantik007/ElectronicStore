<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Electronic_store.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <h1> LOGIN </h1>

            <table border='0' width='480px' cellpadding='0' cellspacing='0' align='center' bgcolor="#ECF0F1" font-color="red" bordercolor="black" style=" border:1px solid; border-style: solid; font-family: 'Arial Rounded MT Bold'; font-size: 24px;">
              
                <tr> <td>&nbsp;</td> </tr>

                
                <tr>
                    <td align="center">Username</td>
                    <td align="center">
                    <asp:TextBox ID="uname" runat="server" CssClass="auto-style2" Width="202px"></asp:TextBox>    
                    </td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td align="center">Password </td>
                    <td align="center"><asp:TextBox ID="pwd" runat="server" CssClass="auto-style2" Width="202px" TextMode="Password"></asp:TextBox></tdalign="center>
                </tr>
               <tr> <td>&nbsp;</td> </tr>
                <tr> <td>&nbsp;</td> <td> 
                    <asp:CheckBox ID="chkbx_seller" runat="server" Text="I am seller" />
                    </td></tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td></td>
                    <td align="center">
                        <asp:Button ID="btn_log" runat="server" CssClass="button_green" Text="Login" OnClick="btn_log_Click" Width="90px" />
                    </td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lbl_error" runat="server" Font-Italic="True" ForeColor="#FF6600" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="link_forgot" runat="server" OnClick="link_forgot_Click">Forgot Password?</asp:LinkButton>
&nbsp;&nbsp; 
                        <br />
                    </td>
                </tr>

                
                </table>
        </center>

    </div>
</asp:Content>
