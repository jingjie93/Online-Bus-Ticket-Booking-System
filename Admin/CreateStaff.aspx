<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CreateStaff.aspx.vb" Inherits="CreateStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center" style="text-align:center">
        <tr>
            <td><strong>
                <asp:Label ID="lblheat" runat="server" Text="Create Agent" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                </strong>
                <br /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                <%--<asp:Label ID="lblError" runat="server" Text="" style="color:Red;font-size:12px;font-weight:bold; text-align:center"></asp:Label>--%>
                                <table border="0" style="font-size: 100%" cellpadding="2">
                                    <tbody>
                                        <tr>
                                            <td align="center" colspan="2" style="padding-bottom:15px"><strong>Sign Up for New Account</strong></td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Staff ID:</td>
                                            <td>
                                                <asp:TextBox ID="txtStaffID" runat="server" Enabled="False"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Name:</td>
                                            <td>
                                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtUserName"
                                        ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                                    ValidationGroup="abc" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                IC Number:</td>
                                            <td>
                                                <asp:TextBox ID="txtIC" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired0" runat="server" ControlToValidate="txtIC"
                                        ErrorMessage="IC Number is required." ToolTip="IC Number is required." 
                                                    ValidationGroup="abc" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Age:</td>
                                            <td>
                                                <asp:TextBox ID="txAge" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired1" runat="server" ControlToValidate="txAge"
                                        ErrorMessage="Age is required." ToolTip="Age is required." ValidationGroup="abc" 
                                                    ForeColor="Red">*</asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                    ControlToValidate="txAge" Display="Dynamic" 
                                                    ErrorMessage="*Age cannot input String" ForeColor="Red" 
                                                    Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" 
                                                    ValidationGroup="abc"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Gender:</td>
                                            <td>
                                                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Selected="True">Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Race:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlRace" runat="server">
                                                    <asp:ListItem>Malay</asp:ListItem>
                                                    <asp:ListItem>Chinese</asp:ListItem>
                                                    <asp:ListItem>India</asp:ListItem>
                                                    <asp:ListItem>Kadazan</asp:ListItem>
                                                    <asp:ListItem>Iban</asp:ListItem>
                                                    <asp:ListItem>Other</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Password:</td>
                                            <td>
                                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="148px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword"
                                        ErrorMessage="Password is required." ToolTip="Password is required." 
                                                    ValidationGroup="abc" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Confirm Password:</td>
                                            <td>
                                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                        ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required."
                                        ValidationGroup="abc" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                E-mail:</td>
                                            <td>
                                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="abc" 
                                                    ForeColor="Red">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="regValid" runat="server" 
                                                    ErrorMessage="Invalid Email" Display="Dynamic" 
                                        
                                                    ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"  
                                                    ControlToValidate="txtEmail" ValidationGroup="abc" ForeColor="Red"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Phone Number:</td>
                                            <td>
                                                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired2" runat="server" ControlToValidate="txtPhoneNumber"
                                        ErrorMessage="Phone Number is required." ToolTip="Phone Number is required." 
                                                    ValidationGroup="abc" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Address:</td>
                                            <td>
                                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired3" runat="server" ControlToValidate="txtAddress"
                                        ErrorMessage="Address is required." ToolTip="Address is required." 
                                                    ValidationGroup="abc" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Security Question:</td>
                                            <td>
                                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                        ErrorMessage="Security question is required." ToolTip="Security question is required."
                                        ValidationGroup="abc" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Security Answer:</td>
                                            <td>
                                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                        ErrorMessage="Security answer is required." ToolTip="Security answer is required."
                                        ValidationGroup="abc" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="txtPassword"
                                        ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                        ValidationGroup="abc" ForeColor="Red"></asp:CompareValidator>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td class="auto-style1" valign="middle" colspan ="2" align="center">
                                                <asp:Button ID="btnAdd" runat="server" Text="Create" ValidationGroup="abc" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            <%--</ContentTemplate>
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>--%>
                <p style="width:100%;text-align:center">
                    <%--<asp:Label ID="lblError" runat="server" Text="" style="color:Red;font-size:12px;font-weight:bold; text-align:center"></asp:Label>--%>
                </p>
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

