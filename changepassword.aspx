<%@ Page Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        height: 22px;
    }
        .style5
        {
            width: 74px;
        }
        .style6
        {
            width: 64%;
            height: 241px;
            margin-left: 183px;
        }
        .style8
        {
            height: 22px;
            text-align: left;
        }
        .style9
        {
            width: 204px;
        }
        .style10
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style9">
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
        <td class="style5">
            &nbsp;</td>
        <td class="style9">
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
        <td class="style5">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td colspan="4" class="style10">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" 
                                Font-Names="Cambria" Font-Size="X-Large" 
                ForeColor="#990000" Text="Change Password"></asp:Label>
                        </td>
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
        <td class="style5">
            &nbsp;</td>
        <td colspan="6" rowspan="6">
            <table class="style6" align="center">
                <tr>
                    <td class="style8">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#6699FF" style="text-align: center" Text="User Name"></asp:Label>
                            </td>
                    <td class="style8">
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                    <td class="style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtusername" ErrorMessage="plz enter username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#6699FF" style="text-align: center" Text="Old Password"></asp:Label>
                            </td>
                    <td>
                        <asp:TextBox ID="txtoldpwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtoldpwd" ErrorMessage="plz enter oldpassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#6699FF" style="text-align: center" Text="New password"></asp:Label>
                            </td>
                    <td>
                        <asp:TextBox ID="txtnewpwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtnewpwd" ErrorMessage="plz enter new password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#6699FF" style="text-align: center" Text="Re-Password"></asp:Label>
                            </td>
                    <td>
                        <asp:TextBox ID="txtrepwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtnewpwd" ControlToValidate="txtrepwd" 
                            ErrorMessage="password is not match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style10">
                            <asp:Button ID="btn_ok" runat="server" Text="Submit" 
                                onclick="btn_submit_Click" BorderColor="#009900" BorderStyle="Outset" 
                                Font-Bold="True" Font-Size="Medium" ForeColor="#990000" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_cancel" runat="server" BorderColor="#009900" 
                                BorderStyle="Outset" CausesValidation="False" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="#990000" PostBackUrl="~/login.aspx" 
                                Text="Cancel" />
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Visible="False" ForeColor="Red"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
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
        <td class="style5">
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
        <td class="style5">
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
        <td class="style5">
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
        <td class="style5">
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
        <td class="style5">
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
        <td class="style5">
            &nbsp;</td>
        <td class="style9">
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
        <td class="style5">
            &nbsp;</td>
        <td class="style9">
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
        <td class="style5">
            &nbsp;</td>
        <td class="style9">
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

