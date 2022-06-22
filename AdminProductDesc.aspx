<%@ Page Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="AdminProductDesc.aspx.cs" Inherits="AdminProductDesc" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    0000000000<table class="style1">
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
            <td colspan="8" rowspan="8">
                <table align="center" class="style1" 
                    style="height: 390px; width: 57%; margin-left: 338px;">
                    <tr>
                        <td colspan="4" style="text-align: left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="cambria" 
                                Font-Size="X-Large" ForeColor="#990000" Text="Product Description"></asp:Label>
                            &nbsp;<br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="#990000"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label3" runat="server" Text="Prod Id" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="txtprdid" runat="server" Height="19px" 
                                onselectedindexchanged="txtprdid_SelectedIndexChanged" Width="148px" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label4" runat="server" Text="Prod Name" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtprdname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label5" runat="server" Text="Height" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtheight" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtheight" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtheight" ErrorMessage="Plz Enter Number" 
                                ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label6" runat="server" Text="Width" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtwidth" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtwidth" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtwidth" ErrorMessage="Plz Enter Number" 
                                ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label7" runat="server" Text="Color" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcolor" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtcolor" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txtcolor" ErrorMessage="Plz Enter String" 
                                ValidationExpression="[A-Z a-z]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label8" runat="server" Text="Bluetooth" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label9" runat="server" Text="Data Cable" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label10" runat="server" Text="Camera" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label11" runat="server" Text="Gprs" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList5" runat="server">
                                <asp:ListItem>yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="Label12" runat="server" Text="Charger" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList6" runat="server">
                                <asp:ListItem>yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_add" runat="server" BorderColor="#009900" 
                                BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" 
                                Text="Add" Width="71px" onclick="btn_add_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_cancel" runat="server" BorderColor="#009900" 
                                BorderStyle="Outset" CausesValidation="False" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="#990000" onclick="btn_cancel_Click" Text="Cancel" 
                                Width="71px" />
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

