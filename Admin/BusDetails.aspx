<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="BusDetails.aspx.vb" Inherits="Admin_BusDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center">
        <tr align="center">
            <td align="center"><strong>
                <asp:Label ID="lblheat" runat="server" Text="Bus Details" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                </strong>
                <br /></td>
        </tr>
        <tr>
            <td align="center">
                <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>--%>
        <ContentTemplate>



            <asp:GridView ID="GridView1" runat="server" Width="495px" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Departure" HeaderText="Departure" 
                        SortExpression="Departure" />
                    <asp:BoundField DataField="Arrived" HeaderText="Arrived" 
                        SortExpression="Arrived" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="SeatLeft" HeaderText="SeatLeft" 
                        SortExpression="SeatLeft" />
                    <asp:CommandField ButtonType="Button" SelectText="View" 
                        ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <tr>
            <td align="center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Status %>" 
                    
                    SelectCommand="SELECT [Departure], [Arrived], [Date], [Time], [SeatLeft], [Id] FROM [Status]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Status %>" 
                    
                    SelectCommand="SELECT [Date], [Time], [Departure], [Arrived], [Id], [s1], [s2], [s3], [s4], [s5], [s6], [s7], [s8], [s9], [s10], [SeatLeft] FROM [Status] WHERE ([Id] = @Id)" 
                    DeleteCommand="DELETE FROM [Status] WHERE [Id] = @Id" 
                    InsertCommand="INSERT INTO [Status] ([Date], [Time], [Departure], [Arrived], [s1], [s2], [s3], [s4], [s5], [s6], [s7], [s8], [s9], [s10], [SeatLeft]) VALUES (@Date, @Time, @Departure, @Arrived, @s1, @s2, @s3, @s4, @s5, @s6, @s7, @s8, @s9, @s10, @SeatLeft)" 
                    UpdateCommand="UPDATE [Status] SET [Date] = @Date, [Time] = @Time, [Departure] = @Departure, [Arrived] = @Arrived, [s1] = @s1, [s2] = @s2, [s3] = @s3, [s4] = @s4, [s5] = @s5, [s6] = @s6, [s7] = @s7, [s8] = @s8, [s9] = @s9, [s10] = @s10, [SeatLeft] = @SeatLeft WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter Name="Departure" Type="String" />
                        <asp:Parameter Name="Arrived" Type="String" />
                        <asp:Parameter Name="s1" Type="Int32" />
                        <asp:Parameter Name="s2" Type="Int32" />
                        <asp:Parameter Name="s3" Type="Int32" />
                        <asp:Parameter Name="s4" Type="Int32" />
                        <asp:Parameter Name="s5" Type="Int32" />
                        <asp:Parameter Name="s6" Type="Int32" />
                        <asp:Parameter Name="s7" Type="Int32" />
                        <asp:Parameter Name="s8" Type="Int32" />
                        <asp:Parameter Name="s9" Type="Int32" />
                        <asp:Parameter Name="s10" Type="Int32" />
                        <asp:Parameter Name="SeatLeft" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="Id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter Name="Departure" Type="String" />
                        <asp:Parameter Name="Arrived" Type="String" />
                        <asp:Parameter Name="s1" Type="Int32" />
                        <asp:Parameter Name="s2" Type="Int32" />
                        <asp:Parameter Name="s3" Type="Int32" />
                        <asp:Parameter Name="s4" Type="Int32" />
                        <asp:Parameter Name="s5" Type="Int32" />
                        <asp:Parameter Name="s6" Type="Int32" />
                        <asp:Parameter Name="s7" Type="Int32" />
                        <asp:Parameter Name="s8" Type="Int32" />
                        <asp:Parameter Name="s9" Type="Int32" />
                        <asp:Parameter Name="s10" Type="Int32" />
                        <asp:Parameter Name="SeatLeft" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </td>
            <tr>
            <td align="center"">
            <br />
            <br />

            <asp:DetailsView ID="BusDetailV" runat="server" Height="50px" Width="125px" 
                    AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Departure" HeaderText="Departure" 
                        SortExpression="Departure" />
                    <asp:BoundField DataField="Arrived" HeaderText="Arrived" 
                        SortExpression="Arrived" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="s1" HeaderText="s1" SortExpression="s1" />
                    <asp:BoundField DataField="s2" HeaderText="s2" SortExpression="s2" />
                    <asp:BoundField DataField="s3" HeaderText="s3" SortExpression="s3" />
                    <asp:BoundField DataField="s4" HeaderText="s4" SortExpression="s4" />
                    <asp:BoundField DataField="s5" HeaderText="s5" SortExpression="s5" />
                    <asp:BoundField DataField="s6" HeaderText="s6" SortExpression="s6" />
                    <asp:BoundField DataField="s7" HeaderText="s7" SortExpression="s7" />
                    <asp:BoundField DataField="s8" HeaderText="s8" SortExpression="s8" />
                    <asp:BoundField DataField="s9" HeaderText="s9" SortExpression="s9" />
                    <asp:BoundField DataField="s10" HeaderText="s10" SortExpression="s10" />
                    <asp:BoundField DataField="SeatLeft" HeaderText="SeatLeft" 
                        SortExpression="SeatLeft" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                        ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>

            </td>

            </tr>

            </tr>
            


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

