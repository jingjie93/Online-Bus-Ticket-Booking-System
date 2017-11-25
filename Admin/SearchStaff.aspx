<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SearchStaff.aspx.vb" Inherits="Admin_SearchStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style1
        {
            width: 8px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
        <table>
            <tr>
                <td>
                    <asp:Panel ID="pnl" runat="server">
                        <table style="border:2px solid #F5F5F5">
                            <tr>
                                <td align="center" colspan="4" height="33" style="color: #F7990D; font-size: x-large; font-weight:bold; margin-bottom:15px">Search Staff </td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;</td>
                            </tr>
                            <tr valign="middle">
                                <td align="center" height="27">Staff Name
                                    </td>
                                <td>:
                                    </td>
                                <td>
                                    <asp:TextBox ID="txtname" runat="server" />
                                </td>
                                <td class="style1">
                                    <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtname"
                                            ErrorMessage="*" ForeColor="Red" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" height="27">
                                    <asp:Label ID="lblerror" runat="server" ForeColor="Red" Visible="False" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4">
                                    <asp:Button ID="btnSearch" runat="server" Text="Search" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="pnl1" runat="server" Visible="false" style="border:1px solid #F5F5F5;padding:5px">
                        <table width="285px" border="0">
                            <caption>
                                <tr>
                                    <td align="center" colspan="3" style="color:#F7990D; font-size: x-large; font-weight:bold">Staff Information </td>
                                </tr>
                            </caption>
                            <tr>
                                <td style="padding-top: 15px">&nbsp;</td>
                            </tr>
                            <tr align="left">
                                <td><b>Staff ID </b></td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="lblStaffId" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td><b>Name </b></td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="lblName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td><b>IC Number</b></td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblICNumber" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td><b>Age</b></td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblAge" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td><b>Gender</b></td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="lblGender" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td><b>Race</b></td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblRace" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td>
                                    <b>Email</b></td>
                                <td>
                                    :</td>
                                <td>
                                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td class="auto-style1"><b>Phone Number </b></td>
                                <td class="auto-style1">:
                                </td>
                                <td class="auto-style1">
                                    <asp:Label ID="lblPhNum" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td><b>Address</b></td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <%--<tr>
                                <td colspan="3" align="center" style="padding-top:15px">
                                    <asp:Button ID="btnSubmit" Text="Submit " runat="server" />
                                </td>
                            </tr>--%>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

