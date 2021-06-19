<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Electronic_store.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 245px;
            height: 96px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {}
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 4px 2px;
            padding: 5px 3px;
            background-color: #4CAF50;
        }
        </style>
    <link rel="stylesheet" type="text/css" href="style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="" class="auto-style2" src="images/register.png" />
                <br />

                <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Selected="True">User Registration</asp:ListItem>
                    <asp:ListItem>Seller Registration</asp:ListItem>
            </asp:DropDownList>

                <br />
            </div>

        <div align="center">


            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <center><h1> USER REGISTRATION</h1></center>
                    <table border='0' width='480px' cellpadding='0' cellspacing='0' align='center' bgcolor="#ECF0F1"  font-color="red" style="font-size: larger; border-style: double" style="border:1px solid;">

    <tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'>Username:</td>
    <td>
        <asp:TextBox ID="tb_uname" runat="server" CssClass="auto-style4" Width="178px"></asp:TextBox>
    </td>
    <td>

        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_uname" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
    </tr>
<tr> <td>&nbsp;</td> </tr>

    <tr>
    <td align='center' class="auto-style3">Password:</td>
    <td class="auto-style3">
        <asp:TextBox ID="tb_pwd" runat="server" CssClass="auto-style4" Width="178px" TextMode="Password"></asp:TextBox>
        </td>
        <td>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_pwd" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
    </tr>
<tr> <td>&nbsp;</td> </tr>

     <tr>
    <td align='center'>Retype password:</td>
    <td>
        <asp:TextBox ID="tb_rpwd" runat="server" CssClass="auto-style4" Width="178px" TextMode="Password"></asp:TextBox>
         </td>
         <td>

             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_rpwd" ErrorMessage="Re-Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_pwd" ControlToValidate="tb_rpwd" ErrorMessage="Password not same" ForeColor="Red"></asp:CompareValidator>

    </td>
</tr>
    </tr>
<tr> <td>&nbsp;</td> </tr>

<tr>
    <td align='center'>First Name:</td>
    <td>
        <asp:TextBox ID="tb_fname" runat="server" CssClass="auto-style4" Width="178px"></asp:TextBox>
    </td>
    <td>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_fname" ErrorMessage="Firstname Required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'>Last Name:</td>
    <td>
        <asp:TextBox ID="tb_lname" runat="server" CssClass="auto-style4" Width="178px"></asp:TextBox>
    </td>
    <td>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_lname" ErrorMessage="Lastname Required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'>Address:</td>
    <td>
        <asp:TextBox ID="tb_addr" runat="server" CssClass="auto-style4" Width="180px" Height="43px" TextMode="MultiLine"></asp:TextBox>
    </td>
    <td>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_addr" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center' >Email:</td>
    <td class="auto-style3">
        <asp:TextBox ID="tb_email" runat="server" CssClass="auto-style4" Width="178px"></asp:TextBox>
    </td>
    <td>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_email" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_email" ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'>Contact no.:</td>
    <td>
        <asp:TextBox ID="tb_cntno" runat="server" CssClass="auto-style4" Width="178px"></asp:TextBox>
    </td>
    <td>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_cntno" ErrorMessage="Contact no. Required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr> <td>&nbsp;</td> </tr>

    <tr>
    <td align='center'>Security Question:</td>
    <td>                                  
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>What is your pet name?</asp:ListItem>
            <asp:ListItem>Where were you born?</asp:ListItem>
            <asp:ListItem>What was your first school?</asp:ListItem>
        </asp:DropDownList>
        </td>
        <td>

    </td>
</tr>
<tr> <td>&nbsp;</td> </tr>

<tr>
    <td align='center'>Security Answer:</td>
    <td>
        <asp:TextBox ID="tb_seqa" runat="server" CssClass="auto-style4" Width="178px"></asp:TextBox>
    </td>
    <td>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_seqa" ErrorMessage="Security Answer Required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr> <td>&nbsp;</td> </tr>

<tr> <td>&nbsp;</td> </tr>
<table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
<tr>
    <td align='center'>
        <br />
        <asp:Button ID="register" runat="server" Font-Size="Large" OnClick="register_Click" Text="Register" CssClass="button_green" Width="121px" />
        
        <br />
        
        <br />
        <br />
        <asp:Label ID="lbl_regerror" runat="server" Text="Label" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
        <br />
        </td>
</tr>
</table>
</table>
                </asp:View>
                <asp:View ID="View2" runat="server">

                    <center><h1> SELLER REGISTRATION</h1></center>

                    <table border='0' width='480px' cellpadding='0' cellspacing='0' align='center' bgcolor="#ECF0F1" font-color="red" style="font-size: larger; border-style: solid" style="border:1px solid;">
                        
                        <tr> <td>&nbsp;</td> </tr>
                        <tr> 
                            <td align='center' class="auto-style3">Seller Name</td>
                            <td   class ="auto-style3" align='center'>
                                <asp:TextBox ID="TextBox1" runat="server" Width="168px"></asp:TextBox>
                            </td>
                        </tr>
                       <tr> <td>&nbsp;</td> </tr>
                        <tr> 
                            <td align='center'>Seller Type</td>
                            <td align='center'>
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style5">
                                    <asp:ListItem>Mobiles</asp:ListItem>
                                    <asp:ListItem>Laptops</asp:ListItem>
                                    <asp:ListItem>Home Appliances</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr> <td>&nbsp;</td> </tr>
                        <tr> 
                            <td align='center'>Seller Description</td>
                            <td align='center'>
                                <asp:TextBox ID="TextBox2" runat="server" Height="55px" TextMode="MultiLine" Width="189px"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr> <td>&nbsp;</td> </tr>
                    
                        <table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
<tr>
    <td align='center'>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" CssClass="auto-style6" Width="113px" />
        
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
        <br />
        </td>
</tr>
</table>

                    </table>

                </asp:View>
            </asp:MultiView>


        </div>

</asp:Content>
