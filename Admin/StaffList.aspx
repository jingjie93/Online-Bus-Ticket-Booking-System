<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="StaffList.aspx.vb" Inherits="Admin_StaffList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center" style="text-align:center">
        <tr>
            <td><strong>
                <asp:Label ID="lblheat" runat="server" Font-Size="X-Large" ForeColor="#F7990D" Text="Staff List"></asp:Label>
                </strong>
                <br />
            </td>
        </tr>
        <tr>
            <td>

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    DataKeyNames="StaffId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="StaffId" HeaderText="StaffId" ReadOnly="True" 
                            SortExpression="StaffId" />
                        <asp:BoundField DataField="StaffName" HeaderText="StaffName" 
                            SortExpression="StaffName" />
                        <asp:BoundField DataField="ICNumber" HeaderText="ICNumber" 
                            SortExpression="ICNumber" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:CommandField ButtonType="Button" SelectText="View" 
                            ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
            </td>
        </tr>

        <tr>
            <td align="center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Status %>" 
                    
                    SelectCommand="SELECT [StaffId], [StaffName], [ICNumber], [Age], [Gender] FROM [Staff]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Status %>" 
                    DeleteCommand="DELETE FROM [Staff] WHERE [StaffId] = @StaffId" 
                    InsertCommand="INSERT INTO [Staff] ([StaffId], [StaffName], [ICNumber], [Age], [Gender], [Race], [PhoneNum], [Email], [Address], [Password], [Question], [Answer]) VALUES (@StaffId, @StaffName, @ICNumber, @Age, @Gender, @Race, @PhoneNum, @Email, @Address, @Password, @Question, @Answer)" 
                    SelectCommand="SELECT * FROM [Staff] WHERE ([StaffId] = @StaffId)" 
                    
                    UpdateCommand="UPDATE [Staff] SET [StaffName] = @StaffName, [ICNumber] = @ICNumber, [Age] = @Age, [Gender] = @Gender, [Race] = @Race, [PhoneNum] = @PhoneNum, [Email] = @Email, [Address] = @Address, [Password] = @Password, [Question] = @Question, [Answer] = @Answer WHERE [StaffId] = @StaffId">
                    <DeleteParameters>
                        <asp:Parameter Name="StaffId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StaffId" Type="String" />
                        <asp:Parameter Name="StaffName" Type="String" />
                        <asp:Parameter Name="ICNumber" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Race" Type="String" />
                        <asp:Parameter Name="PhoneNum" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Question" Type="String" />
                        <asp:Parameter Name="Answer" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="StaffId" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StaffName" Type="String" />
                        <asp:Parameter Name="ICNumber" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Race" Type="String" />
                        <asp:Parameter Name="PhoneNum" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Question" Type="String" />
                        <asp:Parameter Name="Answer" Type="String" />
                        <asp:Parameter Name="StaffId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="StaffId" DataSourceID="SqlDataSource2" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="125px" 
                    EnablePagingCallbacks="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="StaffId" HeaderText="StaffId" ReadOnly="True" 
                            SortExpression="StaffId" />
                        <asp:BoundField DataField="StaffName" HeaderText="StaffName" 
                            SortExpression="StaffName" />
                        <asp:BoundField DataField="ICNumber" HeaderText="ICNumber" 
                            SortExpression="ICNumber" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
                        <asp:BoundField DataField="PhoneNum" HeaderText="PhoneNum" 
                            SortExpression="PhoneNum" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="Question" HeaderText="Question" 
                            SortExpression="Question" />
                        <asp:BoundField DataField="Answer" HeaderText="Answer" 
                            SortExpression="Answer" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                            ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <br />
            </td>
        </tr>

    </table>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

