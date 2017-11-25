<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CustomerInfo.aspx.vb" Inherits="CustomerInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 135%;
            margin-left: 155px;
        }
        .form
        {}
        .style7
        {
            height: 14px;
        }
        .style10
        {
            width: 58%;
            height: 40px;
        }
        .style11
        {
            height: 40px;
        }
        .style13
        {
            width: 58%;
        }
        .style14
        {
            height: 14px;
            width: 58%;
        }
        .style15
        {
            width: 183%;
        }
        .style16
        {
            width: 81px;
        }
        .style18
        {
            width: 99px;
            height: 18px;
        }
        .style19
        {
            height: 18px;
            width: 5px;
        }
        .style21
        {
            height: 18px;
            width: 30px;
        }
        .style22
        {
            width: 5px;
        }
        .style27
        {
            width: 30px;
        }
        .style28
        {
            width: 99px;
        }
        .style29
        {
            width: 99px;
            height: 17px;
        }
        .style30
        {
            width: 5px;
            height: 17px;
        }
        .style31
        {
            width: 30px;
            height: 17px;
        }
        .style32
        {
            width: 99px;
            height: 32px;
        }
        .style33
        {
            width: 5px;
            height: 32px;
        }
        .style34
        {
            width: 30px;
            height: 32px;
        }
        .style35
        {
            width: 81px;
            height: 32px;
        }
        .style36
        {
            width: 99px;
            height: 26px;
        }
        .style37
        {
            width: 5px;
            height: 26px;
        }
        .style38
        {
            width: 30px;
            height: 26px;
        }
        .style39
        {
            width: 81px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center">
        <tr align="left">
            <td align="left" class="style1" ><strong>
                <asp:Label ID="lblheat" runat="server" Text="Customer Detail!" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                </strong>
                <br /></td>
        </tr>
    </table>

        <ContentTemplate>
            <table>
                <!-- Main Table start -->
                <tr>
                    <td>
                        <!-- Left Table Start-->
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 83%">
                            <tbody>
                                <tr>
                                    <!--Center Side Start -->
                                    <td align="center" class="style15">
                                        <div class="smallbox" style="margin: 0px">
                                            <table style="margin-left: 20px; width: 125%;" cellspacing="0" cellpadding="0" align="center"
                                                border="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="style13" height="27">From
                                                        </td>
                                                        <td>:</td>
                                                        <td width="67%" align="left" height="27">
                                                            <asp:Label ID="From" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">To
                                                        </td>
                                                        <td class="style7">:</td>
                                                        <td width="63%" align="left" class="style7">
                                                                <ContentTemplate>
                                                                    <div id="txtHint">
                                                                        <asp:Label ID="To" runat="server"></asp:Label>
                                                                    </div>
                                                                </ContentTemplate>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style10" height="27">Depart on 
                                                        </td>
                                                        <td>:</td>
                                                        <td width="63%" align="left" height="27" class="style11">  
                                                                <ContentTemplate>
                                                                    <asp:Label ID="Depart" runat="server" Text="Label"></asp:Label>
                                                                </ContentTemplate>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">Time
                                                        </td>
                                                        <td>:</td>
                                                        <td width="63%" align="left" class="style7">
                                                                <ContentTemplate>
                                                                    <asp:Label ID="Time" runat="server" Text="Label"></asp:Label>
                                                                </ContentTemplate>
                                                    </tr>
                                                    <tr>
                                                        <td class="style13" height="27%">&nbsp;
                                                            </td>
                                                        <td align="left" height="27">&nbsp;
                                                            </td>
                                                    </tr>
                                                    <%--<tr>
                                                        <td class="formtext" height="27%" width="37%">
                                                            Total Seat
                                                        </td>
                                                        <td align="left" height="27" width="63%">
                                                            <asp:TextBox ID="txttotalseat" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                    <!--Center Side End -->
                                    <!--Right Side open -->
                                     <td style="padding-top:15px; padding-left: 30px;">
                                        <asp:Panel ID="pnl1" runat="server">
                                        <table class="style1">
                                                <tr>
                                                    <td class="style36">
                                                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                                                    </td>
                                                    <td class="style37">
                                                        :</td>
                                                    <td class="style38">
                                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ErrorMessage="Name Must Be Filled" ControlToValidate="txtName" 
                                                            ForeColor="Red" ValidationGroup="abc" Display="None"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style32">
                                                        <asp:Label ID="lblPhone" runat="server" Text="Phone Number"></asp:Label>
                                                    </td>
                                                    <td class="style33">
                                                        :</td>
                                                    <td class="style34">
                                                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">

                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                            ControlToValidate="txtPhone" ErrorMessage="Phone Number Must be Filled" 
                                                            ForeColor="Red" ValidationGroup="abc" Display="None"></asp:RequiredFieldValidator>

                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                            ControlToValidate="txtPhone" Display="None" ErrorMessage="Phone number must same like XXX-XXXXXXXX" 
                                                            ValidationExpression="\d{3}-\d{7}" ValidationGroup="abc"></asp:RegularExpressionValidator>

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        <asp:Label ID="lblseatNum" runat="server" Text="Seat Number"></asp:Label>
                                                    </td>
                                                    <td class="style22">
                                                        :</td>
                                                    <td class="style27">
                                                        <asp:Label ID="seatNum" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td rowspan="4" class="style16">


                                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                            ShowMessageBox="True" ShowSummary="False" ValidationGroup="abc" />


                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        <asp:Label ID="lblprice" runat="server" Text="Price per seat"></asp:Label>
                                                    </td>
                                                    <td class="style22">
                                                        :</td>
                                                    <td class="style27">
                                                        <asp:Label ID="price" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style29">
                                                        <asp:Label ID="lbltotalSeat" runat="server" Text="Total Seat"></asp:Label>
                                                    </td>
                                                    <td class="style30">
                                                        :</td>
                                                    <td class="style31">
                                                        <asp:Label ID="totalSeat" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        <asp:Label ID="lbltotalPrice" runat="server" Text="Total price"></asp:Label>
                                                    </td>
                                                    <td class="style19">
                                                        :</td>
                                                    <td class="style21">
                                                        <asp:Label ID="totalPrice" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                <td class="style28" align="right" rowspan="1" 
                                                        style="text-align: right" >
                                                    
                                                </td>
                                                <td>
                                                </td>
                                                <td align="center" class="style27">
                                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                                        ImageUrl="~/images/btn_go.gif" style="height: 25px" ValidationGroup="abc" />
                                                    &nbsp;&nbsp;
                                                </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td align="right" class="style28" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
   
                                        </asp:Panel>
                                        <%--// Start--%>
                                       
                                        <%-- End--%></td>
                                    <!--Right Side End -->
                                </tr>
                                <tr>
                                    <td align="center" class="style15">
                                        &nbsp;</td>
                                    <td style="padding-top:15px" width="55%" align="right">
                                        &nbsp;</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="center" class="style15">
                                        &nbsp;</td>
                                    <td align="right" style="padding-top:15px" width="55%">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" class="style15">
                                        &nbsp;</td>
                                    <td align="right" style="padding-top:15px" width="55%">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" class="style15">
                                        &nbsp;</td>
                                    <td align="right" style="padding-top:15px" width="55%">
                                        &nbsp;</td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- end of Center--></td>
                </tr>
                <tr>
                    <td align="center"></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
            <!-- Main Table End -->
        </ContentTemplate>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

