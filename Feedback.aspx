<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="Feedback" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style2
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
    <div id="innertitle">
        <table align="center" style="margin-bottom:25px">
            <tr align="left">
                <td align="left" ><strong>
                    <asp:Label ID="lblheat" runat="server" Text="Feedback" Font-Size="X-Large" ForeColor="#F7990D"></asp:Label>
                    </strong>
                    <br /></td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="rightContent" >
        <div class="mainText" id="maintextBox" >
            <!-- Body Content Starts -->           
            <div id="formBody" style="margin:0 auto;text-align:center">
                <table cellspacing="3" cellpadding="0" border="0" align="center" style="text-align:left">
                    <tbody>
                        <tr>
                            <td height="30" class="style1"><strong><span>Name: </span></strong></td>
                            <td valign="middle">
                                <asp:TextBox ID="txtName" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvName" ErrorMessage="Required Name" ControlToValidate="txtName"
                                    runat="server" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30" class="style2"><strong><span>Email:</span></strong> </td>
                            <td valign="middle">
                                <asp:TextBox ID="txtEmail" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvEmail" ErrorMessage="Required Email" ControlToValidate="txtEmail"
                                    runat="server" ForeColor="Red" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invaild Email"
                                    ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30"><strong><span>Phone:</span></strong> </td>
                            <td valign="middle">
                                <asp:TextBox ID="txtPhone" runat="server" />
                                <asp:RangeValidator ID="rangePhone" ControlToValidate="txtPhone" Text="Invalid Phone" Type="Double"
                                    MinimumValue="1" MaximumValue="9999999999" runat="server" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30"><strong><span>Subject:</span></strong> </td>
                            <td valign="middle">
                                <div id="txtHint">
                                    <asp:DropDownList CssClass="form" tyle="width: 130px" ID="ddlSubject" runat="server"
                                        Width="133px">
                                        <asp:ListItem Text="Bus Service" Value="Bus Service"></asp:ListItem>
                                        <asp:ListItem Text="Website" Value="Website"></asp:ListItem>
                                        <asp:ListItem Text="Schedules" Value="Schedules"></asp:ListItem>
                                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><strong><span style="vertical-align:middle">Comment:</span></strong><br />(Max 1000 char)
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="txtComment" runat="server" MaxLength="1000" TextMode="MultiLine"
                                    Height="75px" Width="235px" />
                                <asp:RequiredFieldValidator ID="rfvComment" ErrorMessage="Required Content" ControlToValidate="txtComment"
                                    runat="server" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td >
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- Body Content Ends -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

