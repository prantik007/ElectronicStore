<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="upload_test.aspx.cs" Inherits="Electronic_store.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <center style="font-size: x-large; color: #800000">Upload your product </center></p>
    
    <div style="margin-left:560px; font-size: x-large;" ">
        Select your Picture:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FU" runat="server" Width="220px" />
        <br />
        <br />
        Product Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_pictitle" runat="server" 
            Width="166px"></asp:TextBox>
        <br />
        <br />
        Picture Description:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_picdesc" runat="server" 
            Height="42px" TextMode="MultiLine" Width="218px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Product Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_pprice" runat="server" 
            Width="166px"></asp:TextBox>
        <br />
        <br />
        Select Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList_category" 
            runat="server" Height="24px" Width="136px" 
            DataTextField="pcat" DataValueField="pcat">
            <asp:ListItem>Mobiles</asp:ListItem>
            <asp:ListItem>Laptops</asp:ListItem>
            <asp:ListItem>Home Appliances</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
        <br />
        <asp:Button ID="btn_uploadsubmit" runat="server" Text="Submit" 
            class="insideButton" onclick="btn_uploadsubmit_Click" CssClass="button_green" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_uploadreset" runat="server" Text="Reset" 
            class="insideButton" CssClass="button_red" />
    
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#FF3300"></asp:Label>
    
    
    </div>
</asp:Content>
