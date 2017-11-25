<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 164px;
        }
        .auto-style2 {
            width: 386px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
    <div style="text-align:center">
       <%-- <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" 
        BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="1.1em" 
        ForeColor="#333333" CssClass="logininfo" >
            <TextBoxStyle Font-Size="1em"   />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" ForeColor="#284775" />
            <LayoutTemplate>--%>
                <table border="0" cellpadding="4" cellspacing="0" 
                style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table border="0" cellpadding="2">
                                <tr>
                                    <td align="center" colspan="2" 
                                    style="color:White;background-color:#5D7B9D;font-size:1.1em;font-weight:bold;height:22px;">Log In</td>
                                </tr>
                                <tr>
                                    <td align="left" style="padding-top:7px">
                                        <asp:Label ID="UserNameLabel" runat="server">User Name:</asp:Label>
                                    </td>
                                    <td style="padding-top:10px" class="auto-style2" align="left">
                                        <asp:TextBox ID="txtUserName" runat="server" Font-Size="1em" Width="142px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" 
                                        ControlToValidate="txtUserName" ErrorMessage="User Name is required." 
                                        ToolTip="User Name is required." 
                                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="PasswordLabel" runat="server">Password:</asp:Label>
                                    </td>
                                    <td class="auto-style2" align="left">
                                        <asp:TextBox ID="txtPassword" runat="server" Font-Size="1em" TextMode="Password" Width="142px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="txtPassword" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="btnLogin" runat="server" BackColor="#FFFBFF" 
                                        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                                        Font-Names="Verdana" Font-Size="1em" ForeColor="#284775" Text="Log In"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align:left">
                                        <asp:HyperLink ID="PasswordRecoveryLink" runat="server" 
                                        NavigateUrl="~/ForgetPassword.aspx">Forget Password</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            <%--</LayoutTemplate>
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LabelStyle HorizontalAlign="Left"></LabelStyle>
            <TitleTextStyle BackColor="#5D7B9D"  Font-Bold="True" ForeColor="#FFFFFF" Height="22px" 
            Font-Size="1.1em" />
        </asp:Login>--%>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

