<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPasswordt" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style6
        {
        width: 53%;
        text-align: center;
        height: 205px;
        margin-left: 325px;
    }
    .style7
    {
        height: 67px;
        text-align: left;
    }
    .style8
    {
        width: 100%;
        text-align: center;
    }
    .style9
    {
        margin-left: 0px;
    }
         .style10
         {
             height: 40px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style8">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="6" rowspan="6">
                <table align="center" class="style6">
                    <tr>
                        <td colspan="3" style="text-align: center" class="style10">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" 
                                Font-Names="Cambria" Font-Size="X-Large" ForeColor="#990000" 
                                Text="Forget Password"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#6699FF" style="text-align: center" Text="User Name"></asp:Label>
                            <br />
                        </td>
                        <td>
                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtusername" ErrorMessage="enter username"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#6699FF" Text="Question"></asp:Label>
                            <br />
                        </td>
                        <td>
                            <asp:DropDownList ID="txtques" runat="server" Height="19px" Width="144px" 
                                CssClass="style9">
                                <asp:ListItem>your favourite book?</asp:ListItem>
                                <asp:ListItem> your favourite teacher?</asp:ListItem>
                                <asp:ListItem> your pat Name?</asp:ListItem>
                                <asp:ListItem> your hobby?</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#6699FF" Text="Answer"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtanswer" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtanswer" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="style7">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BorderColor="#009900" 
                                BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" 
                                onclick="Button1_Click" Text="Submit" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BorderColor="#009900" 
                                BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" 
                                PostBackUrl="~/login.aspx" Text="Cancel" CausesValidation="False" 
                                onclick="Button2_Click" />
&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="style3">
                            &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="#990000" Text="Your Password is:" Visible="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtpassword" runat="server" ReadOnly="True" 
                                ForeColor="Red" style="text-align: center" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    </table>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

