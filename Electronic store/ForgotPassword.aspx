<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Electronic_store.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
<center style="text-decoration: underline; font-size: 30px; color: #993300">

    <br />

PASSWORD RECOVERY!
    <br />
    <br />
    <br />
</center>

</div>

<div style="margin-left: 50px">

<center style="font-size: x-large">
    <asp:Label ID="lbl_uname" runat="server" Text="Username :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="177px"></asp:TextBox>
    <asp:TextBox ID="tb_seca" runat="server" Height="24px" Width="177px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="button_green" 
        onclick="Button2_Click" Width="80px" />
    <asp:Button ID="Button3" runat="server" CssClass="button_green" 
        onclick="Button3_Click" Text="Submit" Height="34px" Width="83px" />
    <br />
    <br />
    <asp:Label ID="lbl_1" runat="server" Text="Username :"></asp:Label>
    <asp:Label ID="lbl_2" runat="server" Text="Username :"></asp:Label>
    <br />
    <br />
    <br />
    </center>

</div>
</asp:Content>
