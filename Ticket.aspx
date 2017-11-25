<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Ticket.aspx.vb" Inherits="Ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 876px;
        }
        .style4
        {
            width: 122px;
        }
        .style5
        {
            width: 115px;
        }
    </style>
    <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>Thank You. This is your ticket.</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<style type="text/css" media="print" >
body
{
font-size:12px;
}
#btnPrint
{
	display:none;
	}
</style>  
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="content1" runat="Server">
    <div>
        <table align="center" style="margin-bottom:25px;">
        <tr>       
            <td>
               <strong> 
                <asp:Label ID="lblheat" runat="server" Text="Print Ticket Now!" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
    </table>
    <div id="PrintArea">
        <table >
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="style1">
                    <asp:Panel ID="pnlContents" runat="server">
                    <table cellspacing="0" cellpadding="2" border="0" 
                        style="border:2px solid gray;padding:5px" align="center" >
                        <tbody>
                            <tr>
                                <td colspan="3" align="center" 
                                    
                                    style="border-bottom: 2px solid gray; padding-bottom:5px; border-bottom-width: 2px;">
                                  <asp:Image ID="Image1" ImageUrl="~/Images/logo.gif" runat="server" Height="60px"
                                        Width="105px" />
                                </td>
                                <td align="left" colspan="3" style="color: Blue;border-bottom: 2px solid gray; padding-bottom: 5px">
                                    H.O :- Lemon Bus,Toh Kok Cheng<br />
                                    Ph  :- 0169600029
                                    <br />
                                    B.O :- Lemon Bus, Cindy Wong<br />
                                    Ph  :- 0169229212
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Ticket Number
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style4">
                                    <span><strong>
                                        <asp:Literal ID="litNum" runat="server" />
                                    </strong></span>
                                </td>
                                <%--<td>
                                    Agent Name
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style5">
                                    <span><strong>
                                        <asp:Literal ID="litAname" runat="server" />
                                    </strong></span>
                                </td>--%>
                            </tr>
                            <tr>
                                <td>
                                    Name
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style4">
                                    <span><strong>
                                        <asp:Literal ID="litName" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Phone Number
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style5">
                                    <span><strong>
                                        <asp:Literal ID="litph1" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Departure
                                </td>
                                <td class="arial18 ">
                                    :
                                </td>
                                <td class="style4">
                                   <span><strong> <asp:Literal ID="litDeparture" runat="server" />
                                    </strong></span></td>
                                <td>
                                    Arrival
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style5">
                                    <span><strong>
                                        <asp:Literal ID="litArrival" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Journey Date
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style4">
                                    <span><strong>
                                        <asp:Literal ID="litdate1" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Journey Time
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style5">
                                    <span><strong>
                                        <asp:Literal ID="littime1" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Seat Numbers
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style4">
                                    <span><strong>
                                        <asp:Literal ID="litseat1" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    No.of Passengers
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style5">
                                    <span><strong>
                                        <asp:Literal ID="litNPasse" runat="server" /></strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Total Price
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="style4">
                                    <span><strong>
                                        <asp:Literal ID="litPrice" runat="server" />
                                    </strong></span>
                                </td>
                                <td colspan="3" >&nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                    </asp:Panel>
                    
                    <table>

                    <tr>

                    <td align="right" width="800" >
                   

                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        </asp:UpdateProgress>
                   

                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Print" OnClientClick = "return PrintPanel();"  />

                    </td>
                    </tr>

                    </table>
                </td>
            </tr>
        </table>
      </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

