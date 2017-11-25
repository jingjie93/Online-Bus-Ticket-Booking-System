<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Status.aspx.vb" Inherits="Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 125px;
        }
        .style2
        {
            width: 277px;
        }
        .style3
        {
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center">
        <tr align="left">
            <td align="left" class="style2" ><strong>
                <asp:Label ID="lblheat" runat="server" Text="Check Status Now!" Font-Size= "X-Large"  
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
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 95%">
                            <tbody>
                                <tr>
                                    <!--Center Side Start -->
                                    <td align="center" class="style1" style="vertical-align: top">
                                        <div class="smallbox" style="margin: 0px">
                                            <table style="margin-top: 50px; margin-left: 20px; width: 328px; vertical-align: top;" 
                                                cellspacing="" cellpadding="" align="center"
                                                border="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="style3" height="27">From:
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                            <asp:DropDownList CssClass="form" ID="Source" runat="server" 
                                                                AppendDataBoundItems="True" AutoPostBack="True" 
                                                                DataSourceID="SqlDataSource1" DataTextField="Departure" 
                                                                DataValueField="Departure">
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                ControlToValidate="Source" ErrorMessage="Please select a departure." 
                                                                InitialValue="Please Select" ValidationGroup="abc" Display="None"></asp:RequiredFieldValidator>
                       
                                                            </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3" height="27">To:
                                                        </td>
                                                        <td width="63%" align="left" height="27%">
                                                            
                                                                <ContentTemplate>
                                                                    <div id="txtHint">
                                                                        <asp:DropDownList CssClass="form" ID="Destination" 
                                                                            runat="server" AppendDataBoundItems="True" AutoPostBack="True" 
                                                                            DataSourceID="SqlDataSource2" DataTextField="Arrival" DataValueField="Arrival">
                                                                        </asp:DropDownList>
                                                                                                         
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                            Display="None" ErrorMessage="Please select the arrival" 
                                                                            ValidationGroup="abc" ControlToValidate="Destination"></asp:RequiredFieldValidator>
                                                                   
         
                                                                        </div>
                                                                </ContentTemplate>
                                                            
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3" height="27">Depart on :
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                            <asp:UpdatePanel ID="up3" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                                                    </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3" height="27%">Time
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                                <ContentTemplate>
                                                                    <asp:DropDownList ID="DepartureTime" runat="server" 
                                                                        AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Time" 
                                                                    DataValueField="Time">
                                                                        <asp:ListItem>12:00:00</asp:ListItem>
                                                                        <asp:ListItem>13:00:00</asp:ListItem>
                                                                        <asp:ListItem>17:00:00</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                                    ControlToValidate="DepartureTime" Display="None" 
                                                                    ErrorMessage="This route is not available." ForeColor="#FF6600" 
                                                                    ValidationGroup="abc"></asp:RequiredFieldValidator>
                                                                </ContentTemplate>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3" height="27%">&nbsp;
                                                                    </td>
                                                          <td class="formtext" height="27%" width="37%">
                                                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>
                                                                </td>
                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                        ConnectionString="<%$ ConnectionStrings:Status %>" 
                                                                        SelectCommand="SELECT DISTINCT [Arrival] FROM [Timelist]">
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                        ConnectionString="<%$ ConnectionStrings:Status %>" 
                                                                        SelectCommand="SELECT DISTINCT [Departure] FROM [Timelist]">
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                                        ConnectionString="<%$ ConnectionStrings:Status %>" 
                                                                        SelectCommand="SELECT [Time] FROM [Timelist] WHERE (([Departure] = @Departure) AND ([Arrival] = @Arrival))">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Source" Name="Departure" 
                                                                                PropertyName="SelectedValue" Type="String" />
                                                                            <asp:ControlParameter ControlID="Destination" Name="Arrival" 
                                                                                PropertyName="SelectedValue" Type="String" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                 </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                                <tr>
                                                            <td class="style3" height="27%">
                                                                &nbsp;<td align="left" height="27" width="63%">
                                                        &nbsp;&nbsp;
                                                        <asp:Button ID="Button1" runat="server" Text="Check" style="height: 26px" 
                                                                            ValidationGroup="abc" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                   <td align="left" height="27" class="style3">
                                                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                           ShowMessageBox="True" ShowSummary="False" ValidationGroup="abc" />
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
                                    <td align="right" width="1%" style="padding-top:15px">
                                        <asp:Panel ID="pnl1" runat="server">
                                            <asp:Table ID="seattable" runat="server" border="0" Width="354px">
                                                <asp:TableRow >
                                                    <asp:TableCell ID="TableCell1" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                           runat="server" />
1</asp:TableCell>
                                                    <asp:TableCell ID="TableCell2" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s6" ImageUrl="~/Images/available_seat_img.gif" 
                                                        
                                                        runat="server" />

6</asp:TableCell>
                                                    <asp:TableCell ID="TableCell3" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s7" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                           runat="server" />

7</asp:TableCell>

                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell11" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s2" ImageUrl="~/Images/available_seat_img.gif" 
                                                        runat="server" />

2</asp:TableCell>
                                                    <asp:TableCell ID="TableCell12" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s5" ImageUrl="~/Images/available_seat_img.gif" 
                                                       runat="server" />

5</asp:TableCell>
                                                    <asp:TableCell ID="TableCell13" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s8" ImageUrl="~/Images/available_seat_img.gif" 
                                                       runat="server" />

8</asp:TableCell>
                                                    <asp:TableCell ID="TableCell34" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s10" ImageUrl="~/Images/available_seat_img.gif" 
                                                         runat="server" />

10</asp:TableCell>

                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell ID="TableCell4" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell5" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell6" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell7" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell8" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell9" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell10" runat="server">&nbsp;</asp:TableCell>
                                                   

                                                </asp:TableRow>  
                                               
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell31" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s3" ImageUrl="~/Images/available_seat_img.gif" 
                                                       runat="server" />

3</asp:TableCell>
                                                    <asp:TableCell ID="TableCell32" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s4" ImageUrl="~/Images/available_seat_img.gif" 
                                                       runat="server" />

4</asp:TableCell>
                                                    <asp:TableCell ID="TableCell33" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s9" ImageUrl="~/Images/available_seat_img.gif" 
                                                        runat="server" />

9</asp:TableCell>


                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell29" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell36" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell37" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell38" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell39" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell40" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell41" runat="server">&nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell42" runat="server">&nbsp;
                                                    <asp:ImageButton ID="buttonGO" runat="server" ImageUrl="~/images/btn_go.gif" ValidationGroup="abc" /></asp:TableCell>

                                                </asp:TableRow>       
                                            </asp:Table>            
                                            
                                        </asp:Panel>
                                        <%--// Start--%>
                                        <table id="logoIndicator" runat="server" >
                                            <tr>
                                                <td class="style1">&nbsp;</td>
                                            </tr>
                                            <tr align="center">
                                                <td  class="style1">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Image ID="imgbo" ImageUrl="~/Images/booked_seat_img.gif" runat="server" 
                                                        Height="23px" Width="31px" />
                                                </td>
                                                <td style="font-size:medium;color:Navy">
                                                    <asp:Literal ID ="litbooked" Text = "Booked Seat" runat="server" />
                                                </td>
                                                <td>
                                                    <asp:Image ID="imgav2" ImageUrl="~/Images/available_seat_img.gif" runat="server" 
                                                        Height="23px" Width="31px" />
                                                </td>
                                                <td style="font-size:medium;color:Navy">
                                                    <asp:Literal ID ="Literal1" Text = "Available Seat" runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                        <%-- End--%></td>
                                    <!--Right Side End -->
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

