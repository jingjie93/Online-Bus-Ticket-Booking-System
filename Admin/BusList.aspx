<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="BusList.aspx.vb" Inherits="Admin_BusList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center">
        <tr align="center">
            <td align="center"><strong>
                <asp:Label ID="lblheat" runat="server" Text="Bus List" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                </strong>
                <br /></td>
        </tr>
        <tr>
            <td align="center">
                <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>--%>
        <ContentTemplate>
            <asp:GridView ID="BustListGridV" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" DataKeyNames="Id" DataSourceID="BusDB" Height="143px" 
                Width="898px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Departure" HeaderText="Departure" 
                        SortExpression="Departure" />
                    <asp:BoundField DataField="Arrival" HeaderText="Arrival" 
                        SortExpression="Arrival" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Time" HeaderText="Time" 
                        SortExpression="Time" />
                    <asp:BoundField DataField="ReachTime" HeaderText="ReachTime" 
                        SortExpression="ReachTime" />
                    <asp:CommandField ButtonType="Button" SelectText="View" 
                        ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="BusDB" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Status %>" 
                OldValuesParameterFormatString="original_{0}" 
                
                SelectCommand="SELECT [Departure], [Arrival], [Price], [Time], [ReachTime], [Id] FROM [Timelist]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="BusDetailV" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Status %>" 
                DeleteCommand="DELETE FROM [Timelist] WHERE [Id] = @Id" 
                InsertCommand="INSERT INTO [Timelist] ([Departure], [Arrival], [Price], [Time], [ReachTime], [BusNum]) VALUES (@Departure, @Arrival, @Price, @Time, @ReachTime, @BusNum)" 
                SelectCommand="SELECT * FROM [Timelist] WHERE ([Id] = @Id)" 
                
                UpdateCommand="UPDATE [Timelist] SET [Departure] = @Departure, [Arrival] = @Arrival, [Price] = @Price, [Time] = @Time, [ReachTime] = @ReachTime, [BusNum] = @BusNum WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Departure" Type="String" />
                    <asp:Parameter Name="Arrival" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter DbType="Time" Name="Time" />
                    <asp:Parameter DbType="Time" Name="ReachTime" />
                    <asp:Parameter Name="BusNum" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="BustListGridV" Name="Id" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Departure" Type="String" />
                    <asp:Parameter Name="Arrival" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter DbType="Time" Name="Time" />
                    <asp:Parameter DbType="Time" Name="ReachTime" />
                    <asp:Parameter Name="BusNum" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="BusDetailV" Height="50px" 
                Width="180px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Departure" HeaderText="Departure" 
                        SortExpression="Departure" />
                    <asp:BoundField DataField="Arrival" HeaderText="Arrival" 
                        SortExpression="Arrival" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Time" HeaderText="Time" 
                        SortExpression="Time" />
                    <asp:BoundField DataField="ReachTime" HeaderText="ReachTime" 
                        SortExpression="ReachTime" />
                    <asp:BoundField DataField="BusNum" HeaderText="BusNum" 
                        SortExpression="BusNum" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                        ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
        </ContentTemplate>
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

